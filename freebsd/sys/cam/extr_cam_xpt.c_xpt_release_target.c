
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cam_et {scalar_t__ refcount; struct cam_et* luns; int luns_mtx; int ed_entries; struct cam_eb* bus; } ;
struct cam_eb {int eb_mtx; int generation; int et_entries; } ;


 int KASSERT (int ,char*) ;
 int M_CAMXPT ;
 int TAILQ_EMPTY (int *) ;
 int TAILQ_REMOVE (int *,struct cam_et*,int ) ;
 int free (struct cam_et*,int ) ;
 int links ;
 int mtx_destroy (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_release_bus (struct cam_eb*) ;

__attribute__((used)) static void
xpt_release_target(struct cam_et *target)
{
 struct cam_eb *bus = target->bus;

 mtx_lock(&bus->eb_mtx);
 if (--target->refcount > 0) {
  mtx_unlock(&bus->eb_mtx);
  return;
 }
 TAILQ_REMOVE(&bus->et_entries, target, links);
 bus->generation++;
 mtx_unlock(&bus->eb_mtx);
 KASSERT(TAILQ_EMPTY(&target->ed_entries),
     ("destroying target, but device list is not empty"));
 xpt_release_bus(bus);
 mtx_destroy(&target->luns_mtx);
 if (target->luns)
  free(target->luns, M_CAMXPT);
 free(target, M_CAMXPT);
}
