
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_wdt_softc {int sc_bh; int sc_bt; } ;


 int bus_space_write_4 (int ,int ,int ,int ) ;

__attribute__((used)) static __inline void
ti_wdt_reg_write(struct ti_wdt_softc *sc, uint32_t reg, uint32_t val)
{

 bus_space_write_4(sc->sc_bt, sc->sc_bh, reg, val);
}
