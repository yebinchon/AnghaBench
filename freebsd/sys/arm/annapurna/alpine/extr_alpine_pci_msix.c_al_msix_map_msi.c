
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct intr_irqsrc {int dummy; } ;
struct al_msix_softc {int irq_min; scalar_t__ base_addr; } ;
typedef int device_t ;


 int EINVAL ;
 int ERR_NOT_IN_MAP ;
 int al_find_intr_pos_in_map (int ,struct intr_irqsrc*) ;
 scalar_t__ bootverbose ;
 struct al_msix_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int,int ,int ) ;

__attribute__((used)) static int
al_msix_map_msi(device_t dev, device_t child, struct intr_irqsrc *isrc,
    uint64_t *addr, uint32_t *data)
{
 struct al_msix_softc *sc;
 int i, spi;

 sc = device_get_softc(dev);

 i = al_find_intr_pos_in_map(dev, isrc);
 if (i == ERR_NOT_IN_MAP)
  return (EINVAL);

 spi = sc->irq_min + i;
 *addr = (uint64_t)sc->base_addr + (uint64_t)((1 << 16) + (spi << 3));
 *data = 0;

 if (bootverbose)
  device_printf(dev, "MSI mapping: SPI: %d addr: %jx data: %x\n",
      spi, (uintmax_t)*addr, *data);
 return (0);
}
