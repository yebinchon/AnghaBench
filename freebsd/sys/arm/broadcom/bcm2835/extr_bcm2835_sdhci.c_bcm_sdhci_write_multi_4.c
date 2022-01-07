
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sdhci_slot {int dummy; } ;
struct bcm_sdhci_softc {int sc_bsh; int sc_bst; } ;
typedef int device_t ;
typedef int bus_size_t ;


 int bus_space_write_multi_4 (int ,int ,int ,int *,int ) ;
 struct bcm_sdhci_softc* device_get_softc (int ) ;

__attribute__((used)) static void
bcm_sdhci_write_multi_4(device_t dev, struct sdhci_slot *slot, bus_size_t off,
    uint32_t *data, bus_size_t count)
{
 struct bcm_sdhci_softc *sc = device_get_softc(dev);

 bus_space_write_multi_4(sc->sc_bst, sc->sc_bsh, off, data, count);
}
