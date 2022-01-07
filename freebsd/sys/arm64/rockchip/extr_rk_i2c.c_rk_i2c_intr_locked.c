
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct rk_i2c_softc {int ipd; int nak_recv; int transfer_done; int state; int cnt; TYPE_1__* msg; int mode; } ;
struct TYPE_2__ {int len; int flags; } ;


 int IIC_M_NOSTOP ;
 int RK_I2C_CON ;
 int RK_I2C_CON_LASTACK ;
 int RK_I2C_CON_MODE_RRX ;
 int RK_I2C_CON_MODE_RX ;
 int RK_I2C_CON_START ;
 int RK_I2C_CON_STOP ;
 int RK_I2C_IEN ;
 int RK_I2C_IEN_MBRFIEN ;
 int RK_I2C_IEN_MBTFIEN ;
 int RK_I2C_IEN_NAKRCVIEN ;
 int RK_I2C_IPD ;
 int RK_I2C_IPD_ALL ;
 int RK_I2C_IPD_NAKRCVIPD ;
 int RK_I2C_MRXCNT ;
 int RK_I2C_MTXCNT ;
 void* RK_I2C_READ (struct rk_i2c_softc*,int ) ;
 int RK_I2C_WRITE (struct rk_i2c_softc*,int ,int) ;





 int rk_i2c_drain_rx (struct rk_i2c_softc*) ;
 int rk_i2c_fill_tx (struct rk_i2c_softc*) ;
 int rk_i2c_send_stop (struct rk_i2c_softc*) ;
 int wakeup (struct rk_i2c_softc*) ;

__attribute__((used)) static void
rk_i2c_intr_locked(struct rk_i2c_softc *sc)
{
 uint32_t reg;

 sc->ipd = RK_I2C_READ(sc, RK_I2C_IPD);


 if ((sc->ipd & RK_I2C_IPD_ALL) == 0)
  return;

 RK_I2C_WRITE(sc, RK_I2C_IPD, sc->ipd);
 sc->ipd &= RK_I2C_IPD_ALL;

 if (sc->ipd & RK_I2C_IPD_NAKRCVIPD) {

  sc->ipd &= ~RK_I2C_IPD_NAKRCVIPD;
  sc->nak_recv = 1;

  sc->transfer_done = 1;
  sc->state = 132;
  goto err;
 }

 switch (sc->state) {
 case 130:

  reg = RK_I2C_READ(sc, RK_I2C_CON);
  reg &= ~RK_I2C_CON_START;
  RK_I2C_WRITE(sc, RK_I2C_CON, reg);

  if (sc->mode == RK_I2C_CON_MODE_RRX ||
      sc->mode == RK_I2C_CON_MODE_RX) {
   sc->state = 131;
   RK_I2C_WRITE(sc, RK_I2C_IEN, RK_I2C_IEN_MBRFIEN |
       RK_I2C_IEN_NAKRCVIEN);

   reg = RK_I2C_READ(sc, RK_I2C_CON);
   reg |= RK_I2C_CON_LASTACK;
   RK_I2C_WRITE(sc, RK_I2C_CON, reg);

   RK_I2C_WRITE(sc, RK_I2C_MRXCNT, sc->msg->len);
  } else {
   sc->state = 128;
   RK_I2C_WRITE(sc, RK_I2C_IEN, RK_I2C_IEN_MBTFIEN |
       RK_I2C_IEN_NAKRCVIEN);

   sc->msg->len += 1;
   rk_i2c_fill_tx(sc);
   RK_I2C_WRITE(sc, RK_I2C_MTXCNT, sc->msg->len);
  }
  break;
 case 131:
  rk_i2c_drain_rx(sc);

  if (sc->cnt == sc->msg->len)
   rk_i2c_send_stop(sc);

  break;
 case 128:
  if (sc->cnt == sc->msg->len &&
       !(sc->msg->flags & IIC_M_NOSTOP)) {
   rk_i2c_send_stop(sc);
   break;
  }

 case 129:

  reg = RK_I2C_READ(sc, RK_I2C_CON);
  reg &= ~RK_I2C_CON_STOP;
  RK_I2C_WRITE(sc, RK_I2C_CON, reg);

  sc->transfer_done = 1;
  sc->state = 132;
  break;
 case 132:
  break;
 }

err:
 wakeup(sc);
}
