
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct aw_mmc_softc {TYPE_1__* aw_mmc_conf; int aw_dev; } ;
struct TYPE_2__ {scalar_t__ mask_data0; } ;


 int AW_MMC_CKCR ;
 int AW_MMC_CKCR_ENB ;
 int AW_MMC_CKCR_LOW_POWER ;
 int AW_MMC_CKCR_MASK_DATA0 ;
 int AW_MMC_CMDR ;
 int AW_MMC_CMDR_LOAD ;
 int AW_MMC_CMDR_PRG_CLK ;
 int AW_MMC_CMDR_WAIT_PRE_OVER ;
 int AW_MMC_READ_4 (struct aw_mmc_softc*,int ) ;
 int AW_MMC_RISR ;
 int AW_MMC_WRITE_4 (struct aw_mmc_softc*,int ,int) ;
 int DELAY (int) ;
 int ETIMEDOUT ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
aw_mmc_update_clock(struct aw_mmc_softc *sc, uint32_t clkon)
{
 uint32_t reg;
 int retry;

 reg = AW_MMC_READ_4(sc, AW_MMC_CKCR);
 reg &= ~(AW_MMC_CKCR_ENB | AW_MMC_CKCR_LOW_POWER |
     AW_MMC_CKCR_MASK_DATA0);

 if (clkon)
  reg |= AW_MMC_CKCR_ENB;
 if (sc->aw_mmc_conf->mask_data0)
  reg |= AW_MMC_CKCR_MASK_DATA0;

 AW_MMC_WRITE_4(sc, AW_MMC_CKCR, reg);

 reg = AW_MMC_CMDR_LOAD | AW_MMC_CMDR_PRG_CLK |
     AW_MMC_CMDR_WAIT_PRE_OVER;
 AW_MMC_WRITE_4(sc, AW_MMC_CMDR, reg);
 retry = 0xfffff;

 while (reg & AW_MMC_CMDR_LOAD && --retry > 0) {
  reg = AW_MMC_READ_4(sc, AW_MMC_CMDR);
  DELAY(10);
 }
 AW_MMC_WRITE_4(sc, AW_MMC_RISR, 0xffffffff);

 if (reg & AW_MMC_CMDR_LOAD) {
  device_printf(sc->aw_dev, "timeout updating clock\n");
  return (ETIMEDOUT);
 }

 if (sc->aw_mmc_conf->mask_data0) {
  reg = AW_MMC_READ_4(sc, AW_MMC_CKCR);
  reg &= ~AW_MMC_CKCR_MASK_DATA0;
  AW_MMC_WRITE_4(sc, AW_MMC_CKCR, reg);
 }

 return (0);
}
