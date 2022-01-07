
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iic_msg {int member_2; int slave; int * member_3; int member_1; int member_0; } ;
struct as3722_softc {int dev; int bus_addr; } ;


 int EIO ;
 int IIC_M_RD ;
 int IIC_M_WR ;
 int device_printf (int ,char*,int ,int) ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;

int as3722_read_buf(struct as3722_softc *sc, uint8_t reg, uint8_t *buf,
    size_t size)
{
 uint8_t addr;
 int rv;
 struct iic_msg msgs[2] = {
  {0, IIC_M_WR, 1, &addr},
  {0, IIC_M_RD, size, buf},
 };

 msgs[0].slave = sc->bus_addr;
 msgs[1].slave = sc->bus_addr;
 addr = reg;

 rv = iicbus_transfer(sc->dev, msgs, 2);
 if (rv != 0) {
  device_printf(sc->dev,
      "Error when reading reg 0x%02X, rv: %d\n", reg, rv);
  return (EIO);
 }

 return (0);
}
