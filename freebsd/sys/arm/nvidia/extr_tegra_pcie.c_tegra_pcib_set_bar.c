
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
struct tegra_pcib_softc {int dummy; } ;
struct TYPE_2__ {int fpci_start; int size; int axi_start; } ;


 int AFI_WR4 (struct tegra_pcib_softc*,int ,int) ;
 TYPE_1__* bars ;

__attribute__((used)) static void
tegra_pcib_set_bar(struct tegra_pcib_softc *sc, int bar, uint32_t axi,
    uint64_t fpci, uint32_t size, int is_memory)
{
 uint32_t fpci_reg;
 uint32_t axi_reg;
 uint32_t size_reg;

 axi_reg = axi & ~0xFFF;
 size_reg = size >> 12;
 fpci_reg = (uint32_t)(fpci >> 8) & ~0xF;
 fpci_reg |= is_memory ? 0x1 : 0x0;
 AFI_WR4(sc, bars[bar].axi_start, axi_reg);
 AFI_WR4(sc, bars[bar].size, size_reg);
 AFI_WR4(sc, bars[bar].fpci_start, fpci_reg);
}
