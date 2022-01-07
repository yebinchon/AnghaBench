
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra_sdhci_softc {int slot; } ;


 int RD4 (struct tegra_sdhci_softc*,int ) ;
 int SDHCI_INT_STATUS ;
 int sdhci_generic_intr (int *) ;

__attribute__((used)) static void
tegra_sdhci_intr(void *arg)
{
 struct tegra_sdhci_softc *sc = arg;

 sdhci_generic_intr(&sc->slot);
 RD4(sc, SDHCI_INT_STATUS);
}
