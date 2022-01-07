
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct mmc_ios {int bus_width; int power_mode; scalar_t__ timing; unsigned int clock; } ;
struct TYPE_3__ {struct mmc_ios ios; } ;
struct aw_mmc_softc {unsigned int aw_clock; TYPE_2__* aw_mmc_conf; int aw_dev; int aw_clk_mmc; int aw_reg_vqmmc; int aw_reg_vmmc; TYPE_1__ aw_host; } ;
typedef int device_t ;
struct TYPE_4__ {scalar_t__ can_calibrate; scalar_t__ new_timing; } ;


 int AW_MMC_BWDR ;
 int AW_MMC_BWDR1 ;
 int AW_MMC_BWDR4 ;
 int AW_MMC_BWDR8 ;
 int AW_MMC_CKCR ;
 int AW_MMC_CKCR_DIV ;
 int AW_MMC_GCTL ;
 int AW_MMC_GCTL_DDR_MOD_SEL ;
 int AW_MMC_NTSR ;
 int AW_MMC_NTSR_MODE_SELECT ;
 int AW_MMC_READ_4 (struct aw_mmc_softc*,int ) ;
 int AW_MMC_SAMP_DL ;
 int AW_MMC_SAMP_DL_SW_EN ;
 int AW_MMC_WRITE_4 (struct aw_mmc_softc*,int ,int) ;
 int CLK_SET_ROUND_DOWN ;
 int aw_mmc_init (struct aw_mmc_softc*) ;
 int aw_mmc_reset (struct aw_mmc_softc*) ;
 int aw_mmc_update_clock (struct aw_mmc_softc*,int) ;
 scalar_t__ bootverbose ;
 scalar_t__ bus_timing_mmc_ddr52 ;
 scalar_t__ bus_timing_uhs_ddr50 ;



 int clk_disable (int ) ;
 int clk_enable (int ) ;
 int clk_set_freq (int ,unsigned int,int ) ;
 struct aw_mmc_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;



 int regulator_disable (int ) ;
 int regulator_enable (int ) ;

__attribute__((used)) static int
aw_mmc_update_ios(device_t bus, device_t child)
{
 int error;
 struct aw_mmc_softc *sc;
 struct mmc_ios *ios;
 unsigned int clock;
 uint32_t reg, div = 1;

 sc = device_get_softc(bus);

 ios = &sc->aw_host.ios;


 switch (ios->bus_width) {
 case 133:
  AW_MMC_WRITE_4(sc, AW_MMC_BWDR, AW_MMC_BWDR1);
  break;
 case 132:
  AW_MMC_WRITE_4(sc, AW_MMC_BWDR, AW_MMC_BWDR4);
  break;
 case 131:
  AW_MMC_WRITE_4(sc, AW_MMC_BWDR, AW_MMC_BWDR8);
  break;
 }

 switch (ios->power_mode) {
 case 129:
  break;
 case 130:
  if (bootverbose)
   device_printf(sc->aw_dev, "Powering down sd/mmc\n");

  if (sc->aw_reg_vmmc)
   regulator_disable(sc->aw_reg_vmmc);
  if (sc->aw_reg_vqmmc)
   regulator_disable(sc->aw_reg_vqmmc);

  aw_mmc_reset(sc);
  break;
 case 128:
  if (bootverbose)
   device_printf(sc->aw_dev, "Powering up sd/mmc\n");

  if (sc->aw_reg_vmmc)
   regulator_enable(sc->aw_reg_vmmc);
  if (sc->aw_reg_vqmmc)
   regulator_enable(sc->aw_reg_vqmmc);
  aw_mmc_init(sc);
  break;
 };


 reg = AW_MMC_READ_4(sc, AW_MMC_GCTL);
 if (ios->timing == bus_timing_uhs_ddr50 ||
   ios->timing == bus_timing_mmc_ddr52)
  reg |= AW_MMC_GCTL_DDR_MOD_SEL;
 else
  reg &= ~AW_MMC_GCTL_DDR_MOD_SEL;
 AW_MMC_WRITE_4(sc, AW_MMC_GCTL, reg);

 if (ios->clock && ios->clock != sc->aw_clock) {
  sc->aw_clock = clock = ios->clock;


  error = aw_mmc_update_clock(sc, 0);
  if (error != 0)
   return (error);

  if (ios->timing == bus_timing_mmc_ddr52 &&
      (sc->aw_mmc_conf->new_timing ||
      ios->bus_width == 131)) {
   div = 2;
   clock <<= 1;
  }


  reg = AW_MMC_READ_4(sc, AW_MMC_CKCR);
  reg &= ~AW_MMC_CKCR_DIV;
  reg |= div - 1;
  AW_MMC_WRITE_4(sc, AW_MMC_CKCR, reg);


  if (sc->aw_mmc_conf->new_timing) {
   reg = AW_MMC_READ_4(sc, AW_MMC_NTSR);
   reg |= AW_MMC_NTSR_MODE_SELECT;
   AW_MMC_WRITE_4(sc, AW_MMC_NTSR, reg);
  }


  error = clk_disable(sc->aw_clk_mmc);
  if (error != 0 && bootverbose)
   device_printf(sc->aw_dev,
     "failed to disable mmc clock: %d\n", error);
  error = clk_set_freq(sc->aw_clk_mmc, clock,
      CLK_SET_ROUND_DOWN);
  if (error != 0) {
   device_printf(sc->aw_dev,
       "failed to set frequency to %u Hz: %d\n",
       clock, error);
   return (error);
  }
  error = clk_enable(sc->aw_clk_mmc);
  if (error != 0 && bootverbose)
   device_printf(sc->aw_dev,
     "failed to re-enable mmc clock: %d\n", error);

  if (sc->aw_mmc_conf->can_calibrate)
   AW_MMC_WRITE_4(sc, AW_MMC_SAMP_DL, AW_MMC_SAMP_DL_SW_EN);


  error = aw_mmc_update_clock(sc, 1);
  if (error != 0)
   return (error);
 }


 return (0);
}
