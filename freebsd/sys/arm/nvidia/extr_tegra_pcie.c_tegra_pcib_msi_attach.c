
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
struct tegra_pcib_softc {int dev; TYPE_1__* isrcs; } ;
struct TYPE_2__ {int irq; int isrc; } ;


 int ENXIO ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int M_ZERO ;
 int OF_xref_from_node (int ) ;
 int TEGRA_PCIB_MAX_MSI ;
 char* device_get_nameunit (int ) ;
 int intr_isrc_register (int *,int ,int ,char*,char const*,int) ;
 scalar_t__ intr_msi_register (int ,int ) ;
 TYPE_1__* malloc (int,int ,int) ;
 int ofw_bus_get_node (int ) ;

__attribute__((used)) static int
tegra_pcib_msi_attach(struct tegra_pcib_softc *sc)
{
 int error;
 uint32_t irq;
 const char *name;

 sc->isrcs = malloc(sizeof(*sc->isrcs) * TEGRA_PCIB_MAX_MSI, M_DEVBUF,
     M_WAITOK | M_ZERO);

 name = device_get_nameunit(sc->dev);
 for (irq = 0; irq < TEGRA_PCIB_MAX_MSI; irq++) {
  sc->isrcs[irq].irq = irq;
  error = intr_isrc_register(&sc->isrcs[irq].isrc,
      sc->dev, 0, "%s,%u", name, irq);
  if (error != 0)
   return (error);
 }
 if (intr_msi_register(sc->dev,
     OF_xref_from_node(ofw_bus_get_node(sc->dev))) != 0)
  return (ENXIO);

 return (0);
}
