
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct iic_msg {int len; int * buf; void* flags; int slave; } ;
struct axp8xx_softc {int addr; } ;
typedef int device_t ;


 void* IIC_M_WR ;
 struct axp8xx_softc* device_get_softc (int ) ;
 int iicbus_transfer (int ,struct iic_msg*,int) ;

__attribute__((used)) static int
axp8xx_write(device_t dev, uint8_t reg, uint8_t val)
{
 struct axp8xx_softc *sc;
 struct iic_msg msg[2];

 sc = device_get_softc(dev);

 msg[0].slave = sc->addr;
 msg[0].flags = IIC_M_WR;
 msg[0].len = 1;
 msg[0].buf = &reg;

 msg[1].slave = sc->addr;
 msg[1].flags = IIC_M_WR;
 msg[1].len = 1;
 msg[1].buf = &val;

 return (iicbus_transfer(dev, msg, 2));
}
