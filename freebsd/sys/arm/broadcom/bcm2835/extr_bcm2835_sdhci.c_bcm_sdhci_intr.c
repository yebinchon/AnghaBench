
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bcm_sdhci_softc {int sc_slot; } ;


 int sdhci_generic_intr (int *) ;

__attribute__((used)) static void
bcm_sdhci_intr(void *arg)
{
 struct bcm_sdhci_softc *sc = arg;

 sdhci_generic_intr(&sc->sc_slot);
}
