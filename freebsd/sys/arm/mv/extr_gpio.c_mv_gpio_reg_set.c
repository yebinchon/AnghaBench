
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int device_t ;


 int GPIO (int ) ;
 int mv_gpio_reg_read (int ,int ) ;
 int mv_gpio_reg_write (int ,int ,int ) ;

__attribute__((used)) static void
mv_gpio_reg_set(device_t dev, uint32_t reg, uint32_t pin)
{
 uint32_t reg_val;

 reg_val = mv_gpio_reg_read(dev, reg);
 reg_val |= GPIO(pin);
 mv_gpio_reg_write(dev, reg, reg_val);
}
