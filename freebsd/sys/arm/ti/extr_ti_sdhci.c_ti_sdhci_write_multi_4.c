
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ti_sdhci_softc {scalar_t__ sdhci_reg_off; int mem_res; } ;
struct sdhci_slot {int dummy; } ;
typedef int device_t ;
typedef scalar_t__ bus_size_t ;


 int bus_write_multi_4 (int ,scalar_t__,int *,scalar_t__) ;
 struct ti_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static void
ti_sdhci_write_multi_4(device_t dev, struct sdhci_slot *slot, bus_size_t off,
    uint32_t *data, bus_size_t count)
{
 struct ti_sdhci_softc *sc = device_get_softc(dev);

 bus_write_multi_4(sc->mem_res, off + sc->sdhci_reg_off, data, count);
}
