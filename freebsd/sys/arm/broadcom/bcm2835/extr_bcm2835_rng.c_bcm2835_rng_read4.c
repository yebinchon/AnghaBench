
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm2835_rng_softc {int sc_mem_res; } ;
typedef int bus_size_t ;


 int bus_read_4 (int ,int ) ;

__attribute__((used)) static __inline uint32_t
bcm2835_rng_read4(struct bcm2835_rng_softc *sc, bus_size_t off)
{

 return bus_read_4(sc->sc_mem_res, off);
}
