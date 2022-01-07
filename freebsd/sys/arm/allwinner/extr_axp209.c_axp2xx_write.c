
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;
typedef int data ;


 int IIC_INTRWAIT ;
 int iicdev_writeto (int ,int ,int *,int,int ) ;

__attribute__((used)) static int
axp2xx_write(device_t dev, uint8_t reg, uint8_t data)
{

 return (iicdev_writeto(dev, reg, &data, sizeof(data), IIC_INTRWAIT));
}
