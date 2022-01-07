
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_gpio_softc {int dummy; } ;


 int ti_gpio_read_4 (struct ti_gpio_softc*,int) ;
 int ti_gpio_write_4 (struct ti_gpio_softc*,int,int) ;

__attribute__((used)) static inline void
ti_gpio_rwreg_modify(struct ti_gpio_softc *sc, uint32_t reg, uint32_t mask,
    bool set_bits)
{
 uint32_t value;

 value = ti_gpio_read_4(sc, reg);
 ti_gpio_write_4(sc, reg, set_bits ? value | mask : value & ~mask);
}
