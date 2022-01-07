
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_gpio_softc {int sc_mem_res; } ;
typedef int bus_size_t ;


 int bus_read_4 (int ,int ) ;

__attribute__((used)) static inline uint32_t
ti_gpio_read_4(struct ti_gpio_softc *sc, bus_size_t off)
{
 return (bus_read_4(sc->sc_mem_res, off));
}
