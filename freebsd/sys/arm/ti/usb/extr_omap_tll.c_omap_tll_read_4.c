
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct omap_tll_softc {int tll_mem_res; } ;
typedef int bus_size_t ;


 int bus_read_4 (int ,int ) ;

__attribute__((used)) static inline uint32_t
omap_tll_read_4(struct omap_tll_softc *sc, bus_size_t off)
{
 return bus_read_4(sc->tll_mem_res, off);
}
