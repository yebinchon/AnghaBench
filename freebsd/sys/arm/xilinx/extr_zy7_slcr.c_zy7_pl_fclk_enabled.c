
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct zy7_slcr_softc {int dummy; } ;


 int RD4 (struct zy7_slcr_softc*,int ) ;
 int ZSLCR_LOCK (struct zy7_slcr_softc*) ;
 int ZSLCR_UNLOCK (struct zy7_slcr_softc*) ;
 int ZY7_SLCR_FPGA_THR_CNT (int) ;
 struct zy7_slcr_softc* zy7_slcr_softc_p ;

int
zy7_pl_fclk_enabled(int unit)
{
 struct zy7_slcr_softc *sc = zy7_slcr_softc_p;
 uint32_t reg;

 if (!sc)
  return (-1);

 ZSLCR_LOCK(sc);
 reg = RD4(sc, ZY7_SLCR_FPGA_THR_CNT(unit));
 ZSLCR_UNLOCK(sc);

 return !(reg & 1);
}
