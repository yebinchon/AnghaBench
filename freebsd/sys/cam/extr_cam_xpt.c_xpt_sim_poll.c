
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct cam_sim {int (* sim_poll ) (struct cam_sim*) ;struct mtx* mtx; } ;


 int camisr_runqueue () ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int stub1 (struct cam_sim*) ;

void
xpt_sim_poll(struct cam_sim *sim)
{
 struct mtx *mtx;

 mtx = sim->mtx;
 if (mtx)
  mtx_lock(mtx);
 (*(sim->sim_poll))(sim);
 if (mtx)
  mtx_unlock(mtx);
 camisr_runqueue();
}
