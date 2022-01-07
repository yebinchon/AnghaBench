
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int IIC_INTRWAIT ;
 int iicdev_writeto (int ,int ,int *,int ,int ) ;

__attribute__((used)) static int
am335x_pmic_write(device_t dev, uint8_t address, uint8_t *data, uint8_t size)
{
 return (iicdev_writeto(dev, address, data, size, IIC_INTRWAIT));
}
