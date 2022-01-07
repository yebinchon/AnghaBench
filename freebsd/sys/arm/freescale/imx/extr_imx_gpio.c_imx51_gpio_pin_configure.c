
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct imx51_gpio_softc {int sc_mtx; } ;
struct gpio_pin {unsigned int gp_flags; int gp_pin; } ;


 int CLEAR4 (struct imx51_gpio_softc*,int ,unsigned int) ;
 unsigned int GPIO_PIN_INPUT ;
 unsigned int GPIO_PIN_OPENDRAIN ;
 unsigned int GPIO_PIN_OUTPUT ;
 unsigned int GPIO_PIN_PRESET_HIGH ;
 unsigned int GPIO_PIN_PRESET_LOW ;
 int IMX_GPIO_DR_REG ;
 int IMX_GPIO_OE_REG ;
 int IMX_GPIO_PSR_REG ;
 int READ4 (struct imx51_gpio_softc*,int ) ;
 int SET4 (struct imx51_gpio_softc*,int ,unsigned int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;

__attribute__((used)) static void
imx51_gpio_pin_configure(struct imx51_gpio_softc *sc, struct gpio_pin *pin,
    unsigned int flags)
{
 u_int newflags, pad;

 mtx_lock_spin(&sc->sc_mtx);
 if (flags & (GPIO_PIN_INPUT | GPIO_PIN_OUTPUT)) {
  newflags = pin->gp_flags & ~(GPIO_PIN_INPUT | GPIO_PIN_OUTPUT);
  if (flags & GPIO_PIN_OUTPUT) {
   if (flags & GPIO_PIN_PRESET_LOW) {
    pad = 0;
   } else if (flags & GPIO_PIN_PRESET_HIGH) {
    pad = 1;
   } else {
    if (flags & GPIO_PIN_OPENDRAIN)
     pad = READ4(sc, IMX_GPIO_PSR_REG);
    else
     pad = READ4(sc, IMX_GPIO_DR_REG);
    pad = (pad >> pin->gp_pin) & 1;
   }
   newflags |= GPIO_PIN_OUTPUT;
   SET4(sc, IMX_GPIO_DR_REG, (pad << pin->gp_pin));
   SET4(sc, IMX_GPIO_OE_REG, (1U << pin->gp_pin));
  } else {
   newflags |= GPIO_PIN_INPUT;
   CLEAR4(sc, IMX_GPIO_OE_REG, (1U << pin->gp_pin));
  }
  pin->gp_flags = newflags;
 }

 mtx_unlock_spin(&sc->sc_mtx);
}
