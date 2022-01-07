
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_sdhci_softc {scalar_t__ sdhci_reg_off; int mem_res; } ;
typedef scalar_t__ bus_size_t ;


 int bus_write_4 (int ,scalar_t__,int ) ;

__attribute__((used)) static inline void
WR4(struct ti_sdhci_softc *sc, bus_size_t off, uint32_t val)
{

 bus_write_4(sc->mem_res, off + sc->sdhci_reg_off, val);
}
