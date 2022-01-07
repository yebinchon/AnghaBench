
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct ti_sdhci_softc {int dummy; } ;
struct mmc_ios {scalar_t__ bus_width; scalar_t__ bus_mode; } ;
struct TYPE_2__ {struct mmc_ios ios; } ;
struct sdhci_slot {TYPE_1__ host; } ;
typedef int device_t ;


 int MMCHS_CON ;
 int MMCHS_CON_DW8 ;
 int MMCHS_CON_OD ;
 scalar_t__ bus_width_8 ;
 struct sdhci_slot* device_get_ivars (int ) ;
 struct ti_sdhci_softc* device_get_softc (int ) ;
 scalar_t__ opendrain ;
 int sdhci_generic_update_ios (int ,int ) ;
 int ti_mmchs_read_4 (struct ti_sdhci_softc*,int ) ;
 int ti_mmchs_write_4 (struct ti_sdhci_softc*,int ,int ) ;

__attribute__((used)) static int
ti_sdhci_update_ios(device_t brdev, device_t reqdev)
{
 struct ti_sdhci_softc *sc = device_get_softc(brdev);
 struct sdhci_slot *slot;
 struct mmc_ios *ios;
 uint32_t val32, newval32;

 slot = device_get_ivars(reqdev);
 ios = &slot->host.ios;







 val32 = ti_mmchs_read_4(sc, MMCHS_CON);
 newval32 = val32;

 if (ios->bus_width == bus_width_8)
  newval32 |= MMCHS_CON_DW8;
 else
  newval32 &= ~MMCHS_CON_DW8;

 if (ios->bus_mode == opendrain)
  newval32 |= MMCHS_CON_OD;
 else
  newval32 &= ~MMCHS_CON_OD;

 if (newval32 != val32)
  ti_mmchs_write_4(sc, MMCHS_CON, newval32);

 return (sdhci_generic_update_ios(brdev, reqdev));
}
