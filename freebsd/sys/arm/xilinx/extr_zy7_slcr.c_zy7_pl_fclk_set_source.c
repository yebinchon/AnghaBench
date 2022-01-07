
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct zy7_slcr_softc {int dummy; } ;


 int RD4 (struct zy7_slcr_softc*,int ) ;
 int WR4 (struct zy7_slcr_softc*,int ,int) ;
 int ZSLCR_LOCK (struct zy7_slcr_softc*) ;
 int ZSLCR_UNLOCK (struct zy7_slcr_softc*) ;
 int ZY7_SLCR_FPGA_CLK_CTRL (int) ;
 int ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_MASK ;
 int ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_SHIFT ;
 int zy7_slcr_lock (struct zy7_slcr_softc*) ;
 struct zy7_slcr_softc* zy7_slcr_softc_p ;
 int zy7_slcr_unlock (struct zy7_slcr_softc*) ;

int
zy7_pl_fclk_set_source(int unit, int source)
{
 struct zy7_slcr_softc *sc = zy7_slcr_softc_p;
 uint32_t reg;

 if (!sc)
  return (-1);

 ZSLCR_LOCK(sc);


 zy7_slcr_unlock(sc);


 reg = RD4(sc, ZY7_SLCR_FPGA_CLK_CTRL(unit));
 reg &= ~(ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_MASK);
 reg |= (source << ZY7_SLCR_FPGA_CLK_CTRL_SRCSEL_SHIFT);
 WR4(sc, ZY7_SLCR_FPGA_CLK_CTRL(unit), reg);


 zy7_slcr_lock(sc);

 ZSLCR_UNLOCK(sc);

 return (0);
}
