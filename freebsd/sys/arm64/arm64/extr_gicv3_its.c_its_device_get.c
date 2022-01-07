
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vmem_addr_t ;
typedef scalar_t__ vm_offset_t ;
typedef void* u_int ;
struct TYPE_2__ {int lpi_base; void* lpi_free; void* lpi_num; scalar_t__ lpi_busy; } ;
struct its_dev {scalar_t__ itt; TYPE_1__ lpis; int itt_size; int devid; int pci_dev; } ;
struct gicv3_its_softc {int sc_its_dev_lock; int sc_its_dev_list; int sc_irq_alloc; } ;
typedef int device_t ;


 int GITS_TYPER ;
 size_t GITS_TYPER_ITTES (int ) ;
 int LPI_INT_TRANS_TAB_ALIGN ;
 int LPI_INT_TRANS_TAB_MAX_ADDR ;
 size_t MAX (void*,int) ;
 int M_FIRSTFIT ;
 int M_GICV3_ITS ;
 int M_NOWAIT ;
 int M_ZERO ;
 int TAILQ_INSERT_TAIL (int *,struct its_dev*,int ) ;
 scalar_t__ contigmalloc (int ,int ,int,int ,int ,int ,int ) ;
 struct gicv3_its_softc* device_get_softc (int ) ;
 int entry ;
 int free (struct its_dev*,int ) ;
 int gic_its_read_8 (struct gicv3_its_softc*,int ) ;
 int its_cmd_mapd (int ,struct its_dev*,int) ;
 struct its_dev* its_device_find (int ,int ) ;
 int its_get_devid (int ) ;
 struct its_dev* malloc (int,int ,int) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int roundup2 (size_t,int) ;
 scalar_t__ vmem_alloc (int ,void*,int,int *) ;
 int vmem_free (int ,int ,void*) ;

__attribute__((used)) static struct its_dev *
its_device_get(device_t dev, device_t child, u_int nvecs)
{
 struct gicv3_its_softc *sc;
 struct its_dev *its_dev;
 vmem_addr_t irq_base;
 size_t esize;

 sc = device_get_softc(dev);

 its_dev = its_device_find(dev, child);
 if (its_dev != ((void*)0))
  return (its_dev);

 its_dev = malloc(sizeof(*its_dev), M_GICV3_ITS, M_NOWAIT | M_ZERO);
 if (its_dev == ((void*)0))
  return (((void*)0));

 its_dev->pci_dev = child;
 its_dev->devid = its_get_devid(child);

 its_dev->lpis.lpi_busy = 0;
 its_dev->lpis.lpi_num = nvecs;
 its_dev->lpis.lpi_free = nvecs;

 if (vmem_alloc(sc->sc_irq_alloc, nvecs, M_FIRSTFIT | M_NOWAIT,
     &irq_base) != 0) {
  free(its_dev, M_GICV3_ITS);
  return (((void*)0));
 }
 its_dev->lpis.lpi_base = irq_base;


 esize = GITS_TYPER_ITTES(gic_its_read_8(sc, GITS_TYPER));





 its_dev->itt_size = roundup2(MAX(nvecs, 2) * esize, 256);
 its_dev->itt = (vm_offset_t)contigmalloc(its_dev->itt_size,
     M_GICV3_ITS, M_NOWAIT | M_ZERO, 0, LPI_INT_TRANS_TAB_MAX_ADDR,
     LPI_INT_TRANS_TAB_ALIGN, 0);
 if (its_dev->itt == 0) {
  vmem_free(sc->sc_irq_alloc, its_dev->lpis.lpi_base, nvecs);
  free(its_dev, M_GICV3_ITS);
  return (((void*)0));
 }

 mtx_lock_spin(&sc->sc_its_dev_lock);
 TAILQ_INSERT_TAIL(&sc->sc_its_dev_list, its_dev, entry);
 mtx_unlock_spin(&sc->sc_its_dev_lock);


 its_cmd_mapd(dev, its_dev, 1);

 return (its_dev);
}
