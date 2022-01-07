
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int rb_sclpin; } ;


 int gpio_pin_set_active (int ,int) ;

__attribute__((used)) static void
i2c_recover_setscl(void *ctx, int value)
{

 gpio_pin_set_active(((struct i2c_softc *)ctx)->rb_sclpin, value);
}
