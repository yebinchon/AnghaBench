
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct epit_softc {int memres; } ;
typedef int bus_size_t ;


 int BUS_SPACE_BARRIER_WRITE ;
 int bus_barrier (int ,int ,int,int ) ;
 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static inline void
WR4B(struct epit_softc *sc, bus_size_t offset, uint32_t value)
{

 bus_write_4(sc->memres, offset, value);
 bus_barrier(sc->memres, offset, 4, BUS_SPACE_BARRIER_WRITE);
}
