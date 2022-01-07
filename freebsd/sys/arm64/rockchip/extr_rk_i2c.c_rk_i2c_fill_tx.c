
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct rk_i2c_softc {int cnt; int tx_slave_addr; TYPE_1__* msg; } ;
struct TYPE_2__ {int len; int slave; int* buf; } ;


 scalar_t__ RK_I2C_TXDATA_BASE ;
 int RK_I2C_WRITE (struct rk_i2c_softc*,scalar_t__,int) ;

__attribute__((used)) static uint8_t
rk_i2c_fill_tx(struct rk_i2c_softc *sc)
{
 uint32_t buf32;
 uint8_t buf;
 int i, j, len;

 if (sc->msg == ((void*)0) || sc->msg->len == sc->cnt)
  return (0);

 len = sc->msg->len - sc->cnt;
 if (len > 8)
  len = 8;

 for (i = 0; i < len; i++) {
  buf32 = 0;
  for (j = 0; j < 4 ; j++) {
   if (sc->cnt == sc->msg->len)
    break;


   if (sc->cnt == 0 && sc->tx_slave_addr) {
    buf = sc->msg->slave;
    sc->tx_slave_addr = 0;
   } else {
    buf = sc->msg->buf[sc->cnt];
    sc->cnt++;
   }
   buf32 |= buf << (j * 8);

  }
  RK_I2C_WRITE(sc, RK_I2C_TXDATA_BASE + 4 * i, buf32);

  if (sc->cnt == sc->msg->len)
   break;
 }

 return (uint8_t)len;
}
