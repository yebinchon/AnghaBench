
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tzic_softc {int tzicregs; } ;


 int bus_write_4 (int ,int,int ) ;

__attribute__((used)) static inline void
tzic_write_4(struct tzic_softc *sc, int reg, uint32_t val)
{

    bus_write_4(sc->tzicregs, reg, val);
}
