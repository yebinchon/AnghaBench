
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct zy7_devcfg_softc {int sc_mtx; } ;


 int DELAY (int) ;
 int DEVCFG_SC_ASSERT_LOCKED (struct zy7_devcfg_softc*) ;
 int EIO ;
 int PCATCH ;
 int RD4 (struct zy7_devcfg_softc*,int ) ;
 int WR4 (struct zy7_devcfg_softc*,int ,int) ;
 int ZY7_DEVCFG_CTRL ;
 int ZY7_DEVCFG_CTRL_PCFG_PROG_B ;
 int ZY7_DEVCFG_INT_ALL ;
 int ZY7_DEVCFG_INT_MASK ;
 int ZY7_DEVCFG_INT_PCFG_INIT_PE ;
 int ZY7_DEVCFG_INT_STATUS ;
 int ZY7_DEVCFG_STATUS ;
 int ZY7_DEVCFG_STATUS_PCFG_INIT ;
 int hz ;
 int mtx_sleep (struct zy7_devcfg_softc*,int *,int ,char*,int ) ;

__attribute__((used)) static int
zy7_devcfg_reset_pl(struct zy7_devcfg_softc *sc)
{
 uint32_t devcfg_ctl;
 int tries, err;

 DEVCFG_SC_ASSERT_LOCKED(sc);

 devcfg_ctl = RD4(sc, ZY7_DEVCFG_CTRL);


 WR4(sc, ZY7_DEVCFG_INT_STATUS, ZY7_DEVCFG_INT_ALL);
 WR4(sc, ZY7_DEVCFG_INT_MASK, ~ZY7_DEVCFG_INT_PCFG_INIT_PE);


 devcfg_ctl |= ZY7_DEVCFG_CTRL_PCFG_PROG_B;
 WR4(sc, ZY7_DEVCFG_CTRL, devcfg_ctl);





 if ((RD4(sc, ZY7_DEVCFG_STATUS) &
      ZY7_DEVCFG_STATUS_PCFG_INIT) != 0) {

  WR4(sc, ZY7_DEVCFG_INT_MASK, ~0);
 }
 else {

  err = mtx_sleep(sc, &sc->sc_mtx, PCATCH, "zy7i1", hz);
  if (err != 0)
   return (err);
 }


 devcfg_ctl &= ~ZY7_DEVCFG_CTRL_PCFG_PROG_B;
 WR4(sc, ZY7_DEVCFG_CTRL, devcfg_ctl);


 tries = 0;
 while ((RD4(sc, ZY7_DEVCFG_STATUS) &
  ZY7_DEVCFG_STATUS_PCFG_INIT) != 0) {
  if (++tries >= 100)
   return (EIO);
  DELAY(5);
 }


 WR4(sc, ZY7_DEVCFG_INT_STATUS, ZY7_DEVCFG_INT_ALL);
 WR4(sc, ZY7_DEVCFG_INT_MASK, ~ZY7_DEVCFG_INT_PCFG_INIT_PE);


 devcfg_ctl |= ZY7_DEVCFG_CTRL_PCFG_PROG_B;
 WR4(sc, ZY7_DEVCFG_CTRL, devcfg_ctl);





 err = mtx_sleep(sc, &sc->sc_mtx, PCATCH, "zy7i2", hz);
 if (err != 0)
  return (err);


 WR4(sc, ZY7_DEVCFG_INT_STATUS, ZY7_DEVCFG_INT_ALL);

 return (0);
}
