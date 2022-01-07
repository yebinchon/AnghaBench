
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ target_id_t ;
struct cam_et {scalar_t__ target_id; int refcount; } ;
struct cam_eb {int et_entries; int eb_mtx; } ;


 int MA_OWNED ;
 struct cam_et* TAILQ_FIRST (int *) ;
 struct cam_et* TAILQ_NEXT (struct cam_et*,int ) ;
 int links ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static struct cam_et *
xpt_find_target(struct cam_eb *bus, target_id_t target_id)
{
 struct cam_et *target;

 mtx_assert(&bus->eb_mtx, MA_OWNED);
 for (target = TAILQ_FIRST(&bus->et_entries);
      target != ((void*)0);
      target = TAILQ_NEXT(target, links)) {
  if (target->target_id == target_id) {
   target->refcount++;
   break;
  }
 }
 return (target);
}
