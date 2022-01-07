
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zy7_slcr_softc {int dummy; } ;


 int WR4 (struct zy7_slcr_softc*,int ,int ) ;
 int ZSLCR_LOCK (struct zy7_slcr_softc*) ;
 int ZSLCR_UNLOCK (struct zy7_slcr_softc*) ;
 int ZY7_SLCR_FPGA_THR_CNT (int) ;
 int ZY7_SLCR_FPGA_THR_CTRL (int) ;
 int zy7_slcr_lock (struct zy7_slcr_softc*) ;
 struct zy7_slcr_softc* zy7_slcr_softc_p ;
 int zy7_slcr_unlock (struct zy7_slcr_softc*) ;

int
zy7_pl_fclk_enable(int unit)
{
 struct zy7_slcr_softc *sc = zy7_slcr_softc_p;

 if (!sc)
  return (-1);

 ZSLCR_LOCK(sc);


 zy7_slcr_unlock(sc);

 WR4(sc, ZY7_SLCR_FPGA_THR_CTRL(unit), 0);
 WR4(sc, ZY7_SLCR_FPGA_THR_CNT(unit), 0);


 zy7_slcr_lock(sc);

 ZSLCR_UNLOCK(sc);

 return (0);
}
