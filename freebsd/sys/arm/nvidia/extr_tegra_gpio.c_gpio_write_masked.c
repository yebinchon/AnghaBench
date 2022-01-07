
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_gpio_softc {int mem_res; } ;
struct gpio_pin {int gp_pin; } ;
typedef scalar_t__ bus_size_t ;


 int GPIO_BIT (int ) ;
 scalar_t__ GPIO_REGNUM (int ) ;
 int bus_write_4 (int ,scalar_t__,int) ;

__attribute__((used)) static inline void
gpio_write_masked(struct tegra_gpio_softc *sc, bus_size_t reg,
    struct gpio_pin *pin, uint32_t val)
{
 uint32_t tmp;
 int bit;

 bit = GPIO_BIT(pin->gp_pin);
 tmp = 0x100 << bit;
 tmp |= (val & 1) << bit;
 bus_write_4(sc->mem_res, reg + GPIO_REGNUM(pin->gp_pin), tmp);
}
