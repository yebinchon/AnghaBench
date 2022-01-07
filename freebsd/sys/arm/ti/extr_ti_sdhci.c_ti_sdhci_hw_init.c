
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int caps; } ;
struct TYPE_4__ {TYPE_1__ host; } ;
struct ti_sdhci_softc {TYPE_2__ slot; int baseclk_hz; int mmchs_clk_id; } ;
typedef int device_t ;


 int DELAY (int) ;
 int MMCHS_CON ;
 int MMCHS_CON_DVAL_8_4MS ;
 int MMCHS_SD_CAPA ;
 int MMCHS_SD_CAPA_VS18 ;
 int MMCHS_SD_CAPA_VS30 ;
 int MMCHS_SYSCONFIG ;
 int MMCHS_SYSCONFIG_RESET ;
 int MMCHS_SYSSTATUS ;
 int MMCHS_SYSSTATUS_RESETDONE ;
 int MMC_OCR_290_300 ;
 int MMC_OCR_300_310 ;
 int MMC_OCR_LOW_VOLTAGE ;
 int SDHCI_HOST_CONTROL ;
 int SDHCI_POWER_CONTROL ;
 int SDHCI_RESET_ALL ;
 int SDHCI_SOFTWARE_RESET ;
 struct ti_sdhci_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int ti_mmchs_read_4 (struct ti_sdhci_softc*,int ) ;
 int ti_mmchs_write_4 (struct ti_sdhci_softc*,int ,int) ;
 scalar_t__ ti_prcm_clk_enable (int ) ;
 scalar_t__ ti_prcm_clk_get_source_freq (int ,int *) ;
 int ti_sdhci_read_1 (int ,int *,int ) ;
 int ti_sdhci_write_1 (int ,int *,int ,int) ;

__attribute__((used)) static void
ti_sdhci_hw_init(device_t dev)
{
 struct ti_sdhci_softc *sc = device_get_softc(dev);
 uint32_t regval;
 unsigned long timeout;


 if (ti_prcm_clk_enable(sc->mmchs_clk_id) != 0) {
  device_printf(dev, "Error: failed to enable MMC clock\n");
  return;
 }


 if (ti_prcm_clk_get_source_freq(sc->mmchs_clk_id,
     &sc->baseclk_hz) != 0) {
  device_printf(dev, "Error: failed to get source clock freq\n");
  return;
 }


 ti_mmchs_write_4(sc, MMCHS_SYSCONFIG, MMCHS_SYSCONFIG_RESET);
 timeout = 1000;
 while (!(ti_mmchs_read_4(sc, MMCHS_SYSSTATUS) &
     MMCHS_SYSSTATUS_RESETDONE)) {
  if (--timeout == 0) {
   device_printf(dev,
       "Error: Controller reset operation timed out\n");
   break;
  }
  DELAY(100);
 }
 ti_sdhci_write_1(dev, ((void*)0), SDHCI_SOFTWARE_RESET, SDHCI_RESET_ALL);
 timeout = 10000;
 while ((ti_sdhci_read_1(dev, ((void*)0), SDHCI_SOFTWARE_RESET) &
     SDHCI_RESET_ALL) != SDHCI_RESET_ALL) {
  if (--timeout == 0) {
   break;
  }
  DELAY(1);
 }
 timeout = 10000;
 while ((ti_sdhci_read_1(dev, ((void*)0), SDHCI_SOFTWARE_RESET) &
     SDHCI_RESET_ALL)) {
  if (--timeout == 0) {
   device_printf(dev,
       "Error: Software reset operation timed out\n");
   break;
  }
  DELAY(100);
 }
 regval = ti_mmchs_read_4(sc, MMCHS_SD_CAPA);
 if (sc->slot.host.caps & MMC_OCR_LOW_VOLTAGE)
  regval |= MMCHS_SD_CAPA_VS18;
 if (sc->slot.host.caps & (MMC_OCR_290_300 | MMC_OCR_300_310))
  regval |= MMCHS_SD_CAPA_VS30;
 ti_mmchs_write_4(sc, MMCHS_SD_CAPA, regval);


 ti_sdhci_write_1(dev, ((void*)0), SDHCI_HOST_CONTROL, 0);
 ti_sdhci_write_1(dev, ((void*)0), SDHCI_POWER_CONTROL, 0);


 ti_mmchs_write_4(sc, MMCHS_CON, MMCHS_CON_DVAL_8_4MS);
}
