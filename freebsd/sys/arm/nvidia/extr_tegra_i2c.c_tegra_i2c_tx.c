
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tegra_i2c_softc {size_t msg_idx; TYPE_1__* msg; } ;
struct TYPE_2__ {size_t len; int* buf; } ;


 int I2C_FIFO_STATUS ;
 scalar_t__ I2C_FIFO_STATUS_TX_FIFO_EMPTY_CNT (int) ;
 int I2C_TX_PACKET_FIFO ;
 int RD4 (struct tegra_i2c_softc*,int ) ;
 int WR4 (struct tegra_i2c_softc*,int ,int) ;
 int min (int,size_t) ;
 int panic (char*) ;

__attribute__((used)) static int
tegra_i2c_tx(struct tegra_i2c_softc *sc)
{
 uint32_t reg;
 int cnt, i;

 if (sc->msg_idx >= sc->msg->len)
  panic("Invalid call to tegra_i2c_tx\n");

 while(sc->msg_idx < sc->msg->len) {
  reg = RD4(sc, I2C_FIFO_STATUS);
  if (I2C_FIFO_STATUS_TX_FIFO_EMPTY_CNT(reg) == 0)
   break;
  cnt = min(4, sc->msg->len - sc->msg_idx);
  reg = 0;
  for (i = 0; i < cnt; i++) {
   reg |= sc->msg->buf[sc->msg_idx] << (i * 8);
   sc->msg_idx++;
  }
  WR4(sc, I2C_TX_PACKET_FIFO, reg);
 }
 if (sc->msg_idx >= sc->msg->len)
  return (0);
 return (sc->msg->len - sc->msg_idx - 1);
}
