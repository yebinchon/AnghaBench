
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i2c_softc {int rb_sdapin; } ;


 int gpio_pin_set_active (int ,int) ;

__attribute__((used)) static void
i2c_recover_setsda(void *ctx, int value)
{

 gpio_pin_set_active(((struct i2c_softc *)ctx)->rb_sdapin, value);
}
