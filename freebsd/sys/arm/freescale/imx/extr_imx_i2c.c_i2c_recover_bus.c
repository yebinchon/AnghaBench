
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicrb_pin_access {int setscl; int getscl; int setsda; int getsda; struct i2c_softc* ctx; } ;
struct i2c_softc {scalar_t__ rb_pinctl_idx; int dev; } ;


 int fdt_pinctrl_configure (int ,scalar_t__) ;
 int i2c_recover_getscl ;
 int i2c_recover_getsda ;
 int i2c_recover_setscl ;
 int i2c_recover_setsda ;
 int iic_recover_bus (struct iicrb_pin_access*) ;

__attribute__((used)) static int
i2c_recover_bus(struct i2c_softc *sc)
{
 struct iicrb_pin_access pins;
 int err;







 if (sc->rb_pinctl_idx == 0)
  return (0);

 fdt_pinctrl_configure(sc->dev, sc->rb_pinctl_idx);

 pins.ctx = sc;
 pins.getsda = i2c_recover_getsda;
 pins.setsda = i2c_recover_setsda;
 pins.getscl = i2c_recover_getscl;
 pins.setscl = i2c_recover_setscl;
 err = iic_recover_bus(&pins);

 fdt_pinctrl_configure(sc->dev, 0);

 return (err);
}
