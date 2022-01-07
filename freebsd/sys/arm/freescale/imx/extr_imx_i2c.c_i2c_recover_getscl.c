
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int rb_sclpin; } ;


 int gpio_pin_is_active (int ,int*) ;

__attribute__((used)) static int
i2c_recover_getscl(void *ctx)
{
 bool active;

 gpio_pin_is_active(((struct i2c_softc *)ctx)->rb_sclpin, &active);
 return (active);

}
