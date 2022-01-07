
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ lpi_busy; int lpi_num; int lpi_base; } ;
struct its_dev {scalar_t__ itt; TYPE_1__ lpis; int itt_size; } ;
struct gicv3_its_softc {int sc_irq_alloc; int sc_its_dev_lock; int sc_its_dev_list; } ;
typedef int device_t ;


 int KASSERT (int,char*) ;
 int M_GICV3_ITS ;
 int TAILQ_REMOVE (int *,struct its_dev*,int ) ;
 int contigfree (void*,int ,int ) ;
 struct gicv3_its_softc* device_get_softc (int ) ;
 int entry ;
 int free (struct its_dev*,int ) ;
 int its_cmd_mapd (int ,struct its_dev*,int ) ;
 int mtx_lock_spin (int *) ;
 int mtx_unlock_spin (int *) ;
 int vmem_free (int ,int ,int ) ;

__attribute__((used)) static void
its_device_release(device_t dev, struct its_dev *its_dev)
{
 struct gicv3_its_softc *sc;

 KASSERT(its_dev->lpis.lpi_busy == 0,
     ("its_device_release: Trying to release an inuse ITS device"));


 its_cmd_mapd(dev, its_dev, 0);

 sc = device_get_softc(dev);


 mtx_lock_spin(&sc->sc_its_dev_lock);
 TAILQ_REMOVE(&sc->sc_its_dev_list, its_dev, entry);
 mtx_unlock_spin(&sc->sc_its_dev_lock);


 KASSERT(its_dev->itt != 0, ("Invalid ITT in valid ITS device"));
 contigfree((void *)its_dev->itt, its_dev->itt_size, M_GICV3_ITS);


 vmem_free(sc->sc_irq_alloc, its_dev->lpis.lpi_base,
     its_dev->lpis.lpi_num);

 free(its_dev, M_GICV3_ITS);
}
