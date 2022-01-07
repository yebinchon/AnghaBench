
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct intr_irqsrc {int dummy; } ;
struct gic_irqsrc {int gi_irq; } ;
struct arm_gicv2m_softc {int sc_mem; } ;
typedef int device_t ;


 scalar_t__ GICv2M_MSI_SETSPI_NS ;
 struct arm_gicv2m_softc* device_get_softc (int ) ;
 int rman_get_virtual (int ) ;
 scalar_t__ vtophys (int ) ;

__attribute__((used)) static int
arm_gicv2m_map_msi(device_t dev, device_t child, struct intr_irqsrc *isrc,
    uint64_t *addr, uint32_t *data)
{
 struct arm_gicv2m_softc *sc = device_get_softc(dev);
 struct gic_irqsrc *gi = (struct gic_irqsrc *)isrc;

 *addr = vtophys(rman_get_virtual(sc->sc_mem)) + GICv2M_MSI_SETSPI_NS;
 *data = gi->gi_irq;

 return (0);
}
