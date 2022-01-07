
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tegra_gpio_softc {int mem_res; } ;
struct tegra_gpio_irqsrc {int irq; } ;
typedef scalar_t__ bus_addr_t ;


 int GPIO_BIT (int ) ;
 int GPIO_LOCK (struct tegra_gpio_softc*) ;
 scalar_t__ GPIO_REGNUM (int ) ;
 int GPIO_UNLOCK (struct tegra_gpio_softc*) ;
 int bus_read_4 (int ,scalar_t__) ;
 int bus_write_4 (int ,scalar_t__,int) ;

__attribute__((used)) static inline void
intr_write_modify(struct tegra_gpio_softc *sc, bus_addr_t reg,
    struct tegra_gpio_irqsrc *tgi, uint32_t val, uint32_t mask)
{
 uint32_t tmp;
 int bit;

 bit = GPIO_BIT(tgi->irq);
 GPIO_LOCK(sc);
 tmp = bus_read_4(sc->mem_res, reg + GPIO_REGNUM(tgi->irq));
 tmp &= ~(mask << bit);
 tmp |= val << bit;
 bus_write_4(sc->mem_res, reg + GPIO_REGNUM(tgi->irq), tmp);
 GPIO_UNLOCK(sc);
}
