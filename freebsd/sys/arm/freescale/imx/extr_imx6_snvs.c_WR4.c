
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snvs_softc {int memres; } ;
typedef int bus_size_t ;


 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static inline void
WR4(struct snvs_softc *sc, bus_size_t offset, uint32_t value)
{

 bus_write_4(sc->memres, offset, value);
}
