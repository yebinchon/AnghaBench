
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int device_t ;


 int IIC_INTRWAIT ;
 int iicdev_readfrom (int ,int ,int *,int ,int ) ;

__attribute__((used)) static int
rk805_read(device_t dev, uint8_t reg, uint8_t *data, uint8_t size)
{
 int err;

 err = iicdev_readfrom(dev, reg, data, size, IIC_INTRWAIT);
 return (err);
}
