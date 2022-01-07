
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct tzic_softc {int tzicregs; } ;


 int bus_read_4 (int ,int) ;

__attribute__((used)) static inline uint32_t
tzic_read_4(struct tzic_softc *sc, int reg)
{

 return (bus_read_4(sc->tzicregs, reg));
}
