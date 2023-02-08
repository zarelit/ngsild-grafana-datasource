{
  description = "ngsild-grafana-datasource";
  inputs.nixpkgs.url = "nixpkgs/release-22.11";
  outputs = { self, nixpkgs }: with nixpkgs.legacyPackages.x86_64-linux; {
    devShell.x86_64-linux = mkShell {
      buildInputs = [
        (yarn.override {
          nodejs = nodejs-16_x;
        })
        nodejs-16_x
      ];
    };
  };
}
