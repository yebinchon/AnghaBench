
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct cam_sim {int refcount; struct mtx* mtx; } ;


 int KASSERT (int,char*) ;
 struct mtx cam_sim_free_mtx ;
 int mtx_lock (struct mtx*) ;
 int mtx_owned (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;

void
cam_sim_hold(struct cam_sim *sim)
{
 struct mtx *mtx = sim->mtx;

 if (mtx) {
  if (!mtx_owned(mtx))
   mtx_lock(mtx);
  else
   mtx = ((void*)0);
 } else {
  mtx = &cam_sim_free_mtx;
  mtx_lock(mtx);
 }
 KASSERT(sim->refcount >= 1, ("sim->refcount >= 1"));
 sim->refcount++;
 if (mtx)
  mtx_unlock(mtx);
}
