
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mmc_ios {int bus_width; int power_mode; int vdd; int clock; } ;
struct TYPE_4__ {int pin; int * dev; } ;
struct TYPE_3__ {struct mmc_ios ios; } ;
struct aml8726_mmc_softc {int* voltages; TYPE_2__ vselect; TYPE_1__ host; } ;
typedef int device_t ;


 int AML_MMC_CONFIG_BUS_WIDTH_1 ;
 int AML_MMC_CONFIG_BUS_WIDTH_4 ;
 int AML_MMC_CONFIG_CMD_ARG_BITS_SHIFT ;
 int AML_MMC_CONFIG_CMD_CLK_DIV_SHIFT ;
 int AML_MMC_CONFIG_DMA_ENDIAN_SBW ;
 int AML_MMC_CONFIG_REG ;
 int AML_MMC_CONFIG_WR_CRC_STAT_SHIFT ;
 int AML_MMC_CONFIG_WR_DELAY_SHIFT ;
 int CSR_WRITE_4 (struct aml8726_mmc_softc*,int ,int) ;
 int EINVAL ;
 int GPIO_PIN_SET (int *,int ,int) ;
 int aml8726_mmc_div (struct aml8726_mmc_softc*,int ) ;
 int aml8726_mmc_power_off (struct aml8726_mmc_softc*) ;
 int aml8726_mmc_power_on (struct aml8726_mmc_softc*) ;


 struct aml8726_mmc_softc* device_get_softc (int ) ;




__attribute__((used)) static int
aml8726_mmc_update_ios(device_t bus, device_t child)
{
 struct aml8726_mmc_softc *sc = device_get_softc(bus);
 struct mmc_ios *ios = &sc->host.ios;
 int error;
 int i;
 uint32_t cfgr;

 cfgr = (2 << AML_MMC_CONFIG_WR_CRC_STAT_SHIFT) |
     (2 << AML_MMC_CONFIG_WR_DELAY_SHIFT) |
     AML_MMC_CONFIG_DMA_ENDIAN_SBW |
     (39 << AML_MMC_CONFIG_CMD_ARG_BITS_SHIFT);

 switch (ios->bus_width) {
 case 131:
  cfgr |= AML_MMC_CONFIG_BUS_WIDTH_4;
  break;
 case 132:
  cfgr |= AML_MMC_CONFIG_BUS_WIDTH_1;
  break;
 default:
  return (EINVAL);
 }

 cfgr |= aml8726_mmc_div(sc, ios->clock) <<
     AML_MMC_CONFIG_CMD_CLK_DIV_SHIFT;

 CSR_WRITE_4(sc, AML_MMC_CONFIG_REG, cfgr);

 error = 0;

 switch (ios->power_mode) {
 case 128:




  if (sc->vselect.dev != ((void*)0)) {
   for (i = 0; i < 2; i++)
    if ((sc->voltages[i] & (1 << ios->vdd)) != 0)
     break;
   if (i >= 2)
    return (EINVAL);
   error = GPIO_PIN_SET(sc->vselect.dev,
       sc->vselect.pin, i);
  }
  break;
 case 129:
  error = aml8726_mmc_power_on(sc);
  break;
 case 130:
  error = aml8726_mmc_power_off(sc);
  break;
 default:
  return (EINVAL);
 }

 return (error);
}
