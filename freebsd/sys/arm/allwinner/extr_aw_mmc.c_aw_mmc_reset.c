
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aw_mmc_softc {int dummy; } ;


 int AW_MMC_GCTL ;
 int AW_MMC_GCTL_RESET ;
 int AW_MMC_READ_4 (struct aw_mmc_softc*,int ) ;
 int AW_MMC_RESET_RETRY ;
 int AW_MMC_WRITE_4 (struct aw_mmc_softc*,int ,int) ;
 int DELAY (int) ;
 int ETIMEDOUT ;

__attribute__((used)) static int
aw_mmc_reset(struct aw_mmc_softc *sc)
{
 uint32_t reg;
 int timeout;

 reg = AW_MMC_READ_4(sc, AW_MMC_GCTL);
 reg |= AW_MMC_GCTL_RESET;
 AW_MMC_WRITE_4(sc, AW_MMC_GCTL, reg);
 timeout = AW_MMC_RESET_RETRY;
 while (--timeout > 0) {
  if ((AW_MMC_READ_4(sc, AW_MMC_GCTL) & AW_MMC_GCTL_RESET) == 0)
   break;
  DELAY(100);
 }
 if (timeout == 0)
  return (ETIMEDOUT);

 return (0);
}
