
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_2__ {int sc_io_res; } ;
struct omap_ehci_softc {TYPE_1__ base; } ;
typedef int bus_size_t ;


 int bus_write_4 (int ,int ,int ) ;

__attribute__((used)) static inline void
omap_ehci_write_4(struct omap_ehci_softc *sc, bus_size_t off, uint32_t val)
{
 bus_write_4(sc->base.sc_io_res, off, val);
}
