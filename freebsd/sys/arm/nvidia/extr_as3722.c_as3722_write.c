
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iic_msg {int member_2; int slave; int * member_3; int member_1; int member_0; } ;
struct as3722_softc {int dev; int bus_addr; } ;


 int EIO ;
 int IIC_M_WR ;
 int device_printf (int ,char*,int ,int) ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;

int
as3722_write(struct as3722_softc *sc, uint8_t reg, uint8_t val)
{
 uint8_t data[2];
 int rv;

 struct iic_msg msgs[1] = {
  {0, IIC_M_WR, 2, data},
 };

 msgs[0].slave = sc->bus_addr;
 data[0] = reg;
 data[1] = val;

 rv = iicbus_transfer(sc->dev, msgs, 1);
 if (rv != 0) {
  device_printf(sc->dev,
      "Error when writing reg 0x%02X, rv: %d\n", reg, rv);
  return (EIO);
 }
 return (0);
}
