
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ti_sdhci_softc {int slot; } ;


 int sdhci_generic_intr (int *) ;

__attribute__((used)) static void
ti_sdhci_intr(void *arg)
{
 struct ti_sdhci_softc *sc = arg;

 sdhci_generic_intr(&sc->slot);
}
