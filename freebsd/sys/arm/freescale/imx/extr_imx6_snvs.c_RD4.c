
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct snvs_softc {int memres; } ;
typedef int bus_size_t ;


 int bus_read_4 (int ,int ) ;

__attribute__((used)) static inline uint32_t
RD4(struct snvs_softc *sc, bus_size_t offset)
{

 return (bus_read_4(sc->memres, offset));
}
