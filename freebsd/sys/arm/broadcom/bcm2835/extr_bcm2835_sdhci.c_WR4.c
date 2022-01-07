
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int clock; } ;
struct bcm_sdhci_softc {TYPE_1__ sc_slot; int sc_bsh; int sc_bst; } ;
typedef int bus_size_t ;


 int DELAY (int) ;
 int bus_space_write_4 (int ,int ,int ,int ) ;

__attribute__((used)) static inline void
WR4(struct bcm_sdhci_softc *sc, bus_size_t off, uint32_t val)
{

 bus_space_write_4(sc->sc_bst, sc->sc_bsh, off, val);





 if (sc->sc_slot.clock > 0)
  DELAY(((2 * 1000000) / sc->sc_slot.clock) + 1);
}
