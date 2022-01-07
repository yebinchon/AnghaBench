
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct twl_softc {int sc_dev; } ;
struct iic_msg {int len; int * buf; int flags; int slave; } ;


 int EIO ;
 int IIC_M_RD ;
 scalar_t__ iicbus_transfer (int ,struct iic_msg*,int) ;

__attribute__((used)) static int
twl_test_present(struct twl_softc *sc, uint8_t addr)
{
 struct iic_msg msg;
 uint8_t tmp;


 msg.slave = addr;
 msg.flags = IIC_M_RD;
 msg.len = 1;
 msg.buf = &tmp;

 if (iicbus_transfer(sc->sc_dev, &msg, 1) != 0)
  return (EIO);

 return (0);
}
