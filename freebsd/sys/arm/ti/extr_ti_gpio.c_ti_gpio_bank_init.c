
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct ti_gpio_softc {scalar_t__ sc_bank; } ;
typedef int device_t ;
typedef scalar_t__ clk_ident_t ;


 int EINVAL ;
 scalar_t__ GPIO1_CLK ;
 scalar_t__ GPIO_PIN_OUTPUT ;
 scalar_t__ GPIO_PIN_PULLUP ;
 scalar_t__ INVALID_CLK_IDENT ;
 int PINS_PER_BANK ;
 int TI_GPIO_GET_FLAGS (int ,int,scalar_t__*) ;
 int TI_GPIO_OE ;
 int TI_GPIO_REVISION ;
 int TI_GPIO_SETDATAOUT ;
 struct ti_gpio_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 scalar_t__ ti_first_gpio_bank () ;
 int ti_gpio_intr_clr (struct ti_gpio_softc*,int) ;
 scalar_t__ ti_gpio_read_4 (struct ti_gpio_softc*,int ) ;
 scalar_t__ ti_gpio_rev () ;
 int ti_gpio_write_4 (struct ti_gpio_softc*,int ,scalar_t__) ;
 scalar_t__ ti_hwmods_get_clock (int ) ;
 int ti_prcm_clk_enable (scalar_t__) ;

__attribute__((used)) static int
ti_gpio_bank_init(device_t dev)
{
 int pin;
 struct ti_gpio_softc *sc;
 uint32_t flags, reg_oe, reg_set, rev;
 clk_ident_t clk;

 sc = device_get_softc(dev);


 clk = ti_hwmods_get_clock(dev);
 if (clk == INVALID_CLK_IDENT) {
  device_printf(dev, "failed to get device id based on ti,hwmods\n");
  return (EINVAL);
 }

 sc->sc_bank = clk - GPIO1_CLK + ti_first_gpio_bank();
 ti_prcm_clk_enable(clk);






 rev = ti_gpio_read_4(sc, TI_GPIO_REVISION);


 if (rev != ti_gpio_rev()) {
  device_printf(dev, "Warning: could not determine the revision "
      "of GPIO module (revision:0x%08x)\n", rev);
  return (EINVAL);
 }


 ti_gpio_intr_clr(sc, 0xffffffff);


 reg_oe = 0xffffffff;
 reg_set = 0;
 for (pin = 0; pin < PINS_PER_BANK; pin++) {
  TI_GPIO_GET_FLAGS(dev, pin, &flags);
  if (flags & GPIO_PIN_OUTPUT) {
   reg_oe &= ~(1UL << pin);
   if (flags & GPIO_PIN_PULLUP)
    reg_set |= (1UL << pin);
  }
 }
 ti_gpio_write_4(sc, TI_GPIO_OE, reg_oe);
 if (reg_set)
  ti_gpio_write_4(sc, TI_GPIO_SETDATAOUT, reg_set);

 return (0);
}
