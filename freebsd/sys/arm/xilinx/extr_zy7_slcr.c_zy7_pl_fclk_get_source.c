
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct zy7_slcr_softc {int dummy; } ;


 int RD4 (struct zy7_slcr_softc*,int ) ;
 int ZSLCR_LOCK (struct zy7_slcr_softc*) ;
 int ZSLCR_UNLOCK (struct zy7_slcr_softc*) ;
 int ZY7_PL_FCLK_SRC_IO ;
 int ZY7_SLCR_FPGA_CLK_CTRL (int) ;
 int ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_MASK ;
 int ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_SHIFT ;
 struct zy7_slcr_softc* zy7_slcr_softc_p ;

int
zy7_pl_fclk_get_source(int unit)
{
 struct zy7_slcr_softc *sc = zy7_slcr_softc_p;
 uint32_t reg;
 int source;

 if (!sc)
  return (-1);

 ZSLCR_LOCK(sc);


 reg = RD4(sc, ZY7_SLCR_FPGA_CLK_CTRL(unit));
 source = (reg & ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_MASK) >>
     ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_SHIFT;


 if ((source & 2) == 0)
  source = ZY7_PL_FCLK_SRC_IO;

 ZSLCR_UNLOCK(sc);

 return (source);
}
