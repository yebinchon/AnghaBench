
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_irqsrc {int dummy; } ;
struct al_msix_softc {int msi_mtx; int ** isrcs; int irq_alloc; } ;
typedef int device_t ;


 int ERR_NOT_IN_MAP ;
 int al_find_intr_pos_in_map (int ,struct intr_irqsrc*) ;
 struct al_msix_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vmem_free (int ,int,int) ;

__attribute__((used)) static int
al_msix_release_msi(device_t dev, device_t child, int count,
    struct intr_irqsrc **srcs)
{
 struct al_msix_softc *sc;
 int i, pos;

 sc = device_get_softc(dev);

 mtx_lock(&sc->msi_mtx);

 pos = al_find_intr_pos_in_map(dev, *srcs);
 vmem_free(sc->irq_alloc, pos, count);
 for (i = 0; i < count; i++) {
  pos = al_find_intr_pos_in_map(dev, *srcs);
  if (pos != ERR_NOT_IN_MAP)
   sc->isrcs[pos] = ((void*)0);
  srcs++;
 }

 mtx_unlock(&sc->msi_mtx);

 return (0);
}
