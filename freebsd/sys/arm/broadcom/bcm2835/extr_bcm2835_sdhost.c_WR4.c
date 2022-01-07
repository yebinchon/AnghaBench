
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bcm_sdhost_softc {int sc_bsh; int sc_bst; } ;
typedef int bus_size_t ;


 int bus_space_write_4 (int ,int ,int ,int ) ;

__attribute__((used)) static inline void
WR4(struct bcm_sdhost_softc *sc, bus_size_t off, uint32_t val)
{

 bus_space_write_4(sc->sc_bst, sc->sc_bsh, off, val);
}
