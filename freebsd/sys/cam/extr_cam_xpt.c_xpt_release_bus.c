
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cam_eb {int refcount; int eb_mtx; int sim; int et_entries; } ;
struct TYPE_2__ {int bus_generation; int xpt_busses; } ;


 int KASSERT (int,char*) ;
 int M_CAMXPT ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct cam_eb*,int ) ;
 int cam_sim_release (int ) ;
 int free (struct cam_eb*,int ) ;
 int links ;
 int mtx_destroy (int *) ;
 int xpt_lock_buses () ;
 int xpt_unlock_buses () ;
 TYPE_1__ xsoftc ;

__attribute__((used)) static void
xpt_release_bus(struct cam_eb *bus)
{

 xpt_lock_buses();
 KASSERT(bus->refcount >= 1, ("bus->refcount >= 1"));
 if (--bus->refcount > 0) {
  xpt_unlock_buses();
  return;
 }
 TAILQ_REMOVE(&xsoftc.xpt_busses, bus, links);
 xsoftc.bus_generation++;
 xpt_unlock_buses();
 KASSERT(TAILQ_EMPTY(&bus->et_entries),
     ("destroying bus, but target list is not empty"));
 cam_sim_release(bus->sim);
 mtx_destroy(&bus->eb_mtx);
 free(bus, M_CAMXPT);
}
