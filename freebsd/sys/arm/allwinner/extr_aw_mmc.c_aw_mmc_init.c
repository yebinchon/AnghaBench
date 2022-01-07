
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct aw_mmc_softc {int dummy; } ;


 int AW_MMC_DBGC ;
 int AW_MMC_FUNS ;
 int AW_MMC_GCTL ;
 int AW_MMC_GCTL_FIFO_AC_MOD ;
 int AW_MMC_GCTL_INT_ENB ;
 int AW_MMC_GCTL_WAIT_MEM_ACCESS ;
 int AW_MMC_IDST ;
 int AW_MMC_IMKR ;
 int AW_MMC_READ_4 (struct aw_mmc_softc*,int ) ;
 int AW_MMC_RISR ;
 int AW_MMC_TMOR ;
 int AW_MMC_TMOR_DTO_LMT_MASK ;
 int AW_MMC_TMOR_DTO_LMT_SHIFT (int ) ;
 int AW_MMC_TMOR_RTO_LMT_MASK ;
 int AW_MMC_TMOR_RTO_LMT_SHIFT (int ) ;
 int AW_MMC_WRITE_4 (struct aw_mmc_softc*,int ,int) ;
 int aw_mmc_reset (struct aw_mmc_softc*) ;

__attribute__((used)) static int
aw_mmc_init(struct aw_mmc_softc *sc)
{
 uint32_t reg;
 int ret;

 ret = aw_mmc_reset(sc);
 if (ret != 0)
  return (ret);


 AW_MMC_WRITE_4(sc, AW_MMC_TMOR,
     AW_MMC_TMOR_DTO_LMT_SHIFT(AW_MMC_TMOR_DTO_LMT_MASK) |
     AW_MMC_TMOR_RTO_LMT_SHIFT(AW_MMC_TMOR_RTO_LMT_MASK));


 AW_MMC_WRITE_4(sc, AW_MMC_IMKR, 0);


 AW_MMC_WRITE_4(sc, AW_MMC_RISR, 0xffffffff);


 AW_MMC_WRITE_4(sc, AW_MMC_DBGC, 0xdeb);


 AW_MMC_WRITE_4(sc, AW_MMC_FUNS, 0xceaa0000);

 AW_MMC_WRITE_4(sc, AW_MMC_IDST, 0xffffffff);


 reg = AW_MMC_READ_4(sc, AW_MMC_GCTL);
 reg |= AW_MMC_GCTL_INT_ENB;
 reg &= ~AW_MMC_GCTL_FIFO_AC_MOD;
 reg &= ~AW_MMC_GCTL_WAIT_MEM_ACCESS;
 AW_MMC_WRITE_4(sc, AW_MMC_GCTL, reg);

 return (0);
}
