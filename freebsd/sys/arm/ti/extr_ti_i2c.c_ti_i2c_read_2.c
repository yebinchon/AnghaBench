
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ti_i2c_softc {int sc_mem_res; } ;
typedef int bus_size_t ;


 int bus_read_2 (int ,int ) ;

__attribute__((used)) static inline uint16_t
ti_i2c_read_2(struct ti_i2c_softc *sc, bus_size_t off)
{

 return (bus_read_2(sc->sc_mem_res, off));
}
