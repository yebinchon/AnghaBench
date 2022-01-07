
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int r_mem; } ;
struct tegra_ahci_sc {TYPE_1__ ctlr; } ;
typedef int device_t ;


 int AHCI_GHC ;
 int AHCI_GHC_IE ;
 int ATA_INL (int ,int ) ;
 int ATA_OUTL (int ,int ,int) ;
 int bus_generic_suspend (int ) ;
 struct tegra_ahci_sc* device_get_softc (int ) ;

__attribute__((used)) static int
tegra_ahci_suspend(device_t dev)
{
 struct tegra_ahci_sc *sc = device_get_softc(dev);

 bus_generic_suspend(dev);

 ATA_OUTL(sc->ctlr.r_mem, AHCI_GHC,
      ATA_INL(sc->ctlr.r_mem, AHCI_GHC) & (~AHCI_GHC_IE));
 return (0);
}
