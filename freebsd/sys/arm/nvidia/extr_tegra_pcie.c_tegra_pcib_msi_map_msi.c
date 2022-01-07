
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct tegra_pcib_softc {int msi_page; } ;
struct tegra_pcib_irqsrc {int irq; } ;
struct intr_irqsrc {int dummy; } ;
typedef int device_t ;


 struct tegra_pcib_softc* device_get_softc (int ) ;
 int vtophys (int ) ;

__attribute__((used)) static int
tegra_pcib_msi_map_msi(device_t dev, device_t child, struct intr_irqsrc *isrc,
    uint64_t *addr, uint32_t *data)
{
 struct tegra_pcib_softc *sc = device_get_softc(dev);
 struct tegra_pcib_irqsrc *ti = (struct tegra_pcib_irqsrc *)isrc;

 *addr = vtophys(sc->msi_page);
 *data = ti->irq;
 return (0);
}
