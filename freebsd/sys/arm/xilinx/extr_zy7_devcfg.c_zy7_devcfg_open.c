
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zy7_devcfg_softc {int is_open; int dma_tag; int sc_mtx; int dev; int * dma_map; } ;
struct thread {int dummy; } ;
struct cdev {struct zy7_devcfg_softc* si_drv1; } ;


 int BUS_SPACE_MAXADDR ;
 int BUS_SPACE_MAXADDR_32BIT ;
 int DEVCFG_SC_LOCK (struct zy7_devcfg_softc*) ;
 int DEVCFG_SC_UNLOCK (struct zy7_devcfg_softc*) ;
 int EBUSY ;
 int PAGE_SIZE ;
 int bus_dma_tag_create (int ,int,int ,int ,int ,int *,int *,int ,int,int ,int ,int ,int *,int *) ;
 int bus_get_dma_tag (int ) ;
 int busdma_lock_mutex ;

__attribute__((used)) static int
zy7_devcfg_open(struct cdev *dev, int oflags, int devtype, struct thread *td)
{
 struct zy7_devcfg_softc *sc = dev->si_drv1;
 int err;

 DEVCFG_SC_LOCK(sc);
 if (sc->is_open) {
  DEVCFG_SC_UNLOCK(sc);
  return (EBUSY);
 }

 sc->dma_map = ((void*)0);
 err = bus_dma_tag_create(bus_get_dma_tag(sc->dev), 4, 0,
     BUS_SPACE_MAXADDR_32BIT,
     BUS_SPACE_MAXADDR,
     ((void*)0), ((void*)0),
     PAGE_SIZE,
     1,
     PAGE_SIZE,
     0,
     busdma_lock_mutex,
     &sc->sc_mtx,
     &sc->dma_tag);
 if (err) {
  DEVCFG_SC_UNLOCK(sc);
  return (err);
 }

 sc->is_open = 1;
 DEVCFG_SC_UNLOCK(sc);
 return (0);
}
