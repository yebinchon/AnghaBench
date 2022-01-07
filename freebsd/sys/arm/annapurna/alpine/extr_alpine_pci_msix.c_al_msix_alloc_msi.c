
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t vmem_addr_t ;
typedef size_t u_int ;
struct TYPE_2__ {int type; } ;
struct intr_map_data_fdt {int ncells; scalar_t__* cells; scalar_t__ iparent; TYPE_1__ hdr; } ;
struct intr_map_data {int dummy; } ;
struct intr_irqsrc {int dummy; } ;
struct al_msix_softc {int gic_dev; scalar_t__ irq_min; int msi_mtx; struct intr_irqsrc** isrcs; int irq_alloc; } ;
typedef int pcell_t ;
typedef int device_t ;


 scalar_t__ AL_EDGE_HIGH ;
 scalar_t__ AL_SPI_INTR ;
 int EINVAL ;
 int ENOMEM ;
 int GIC_INTR_CELL_CNT ;
 int INTR_MAP_DATA_FDT ;
 int M_AL_MSIX ;
 int M_FIRSTFIT ;
 int M_NOWAIT ;
 int M_WAITOK ;
 int PIC_MAP_INTR (int ,struct intr_map_data*,struct intr_irqsrc**) ;
 scalar_t__ bootverbose ;
 struct al_msix_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,scalar_t__,int) ;
 int free (struct intr_map_data_fdt*,int ) ;
 struct intr_map_data_fdt* malloc (int,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 scalar_t__ powerof2 (int) ;
 scalar_t__ vmem_alloc (int ,int,int,size_t*) ;
 int vmem_free (int ,size_t,int) ;

__attribute__((used)) static int
al_msix_alloc_msi(device_t dev, device_t child, int count, int maxcount,
    device_t *pic, struct intr_irqsrc **srcs)
{
 struct intr_map_data_fdt *fdt_data;
 struct al_msix_softc *sc;
 vmem_addr_t irq_base;
 int error;
 u_int i, j;

 sc = device_get_softc(dev);

 if ((powerof2(count) == 0) || (count > 8))
  return (EINVAL);

 if (vmem_alloc(sc->irq_alloc, count, M_FIRSTFIT | M_NOWAIT,
     &irq_base) != 0)
  return (ENOMEM);


 fdt_data = malloc(sizeof(*fdt_data) +
     GIC_INTR_CELL_CNT * sizeof(pcell_t), M_AL_MSIX, M_WAITOK);
 fdt_data->hdr.type = INTR_MAP_DATA_FDT;
 fdt_data->iparent = 0;
 fdt_data->ncells = GIC_INTR_CELL_CNT;
 fdt_data->cells[0] = AL_SPI_INTR;
 fdt_data->cells[1] = 0;
 fdt_data->cells[2] = AL_EDGE_HIGH;

 mtx_lock(&sc->msi_mtx);

 for (i = irq_base; i < irq_base + count; i++) {
  fdt_data->cells[1] = sc->irq_min + i;
  error = PIC_MAP_INTR(sc->gic_dev,
      (struct intr_map_data *)fdt_data, srcs);
  if (error) {
   for (j = irq_base; j < i; j++)
    sc->isrcs[j] = ((void*)0);
   mtx_unlock(&sc->msi_mtx);
   vmem_free(sc->irq_alloc, irq_base, count);
   free(fdt_data, M_AL_MSIX);
   return (error);
  }

  sc->isrcs[i] = *srcs;
  srcs++;
 }

 mtx_unlock(&sc->msi_mtx);
 free(fdt_data, M_AL_MSIX);

 if (bootverbose)
  device_printf(dev,
      "MSI-X allocation: start SPI %d, count %d\n",
      (int)irq_base + sc->irq_min, count);

 *pic = sc->gic_dev;

 return (0);
}
