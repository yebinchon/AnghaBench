
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtx {int dummy; } ;
struct cam_sim {scalar_t__ refcount; int devq; struct mtx* mtx; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int M_CAMSIM ;
 int PRIBIO ;
 struct mtx cam_sim_free_mtx ;
 int cam_simq_free (int ) ;
 int free (struct cam_sim*,int ) ;
 int msleep (struct cam_sim*,struct mtx*,int ,char*,int ) ;
 int mtx_assert (struct mtx*,int ) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;

void
cam_sim_free(struct cam_sim *sim, int free_devq)
{
 struct mtx *mtx = sim->mtx;
 int error;

 if (mtx) {
  mtx_assert(mtx, MA_OWNED);
 } else {
  mtx = &cam_sim_free_mtx;
  mtx_lock(mtx);
 }
 sim->refcount--;
 if (sim->refcount > 0) {
  error = msleep(sim, mtx, PRIBIO, "simfree", 0);
  KASSERT(error == 0, ("invalid error value for msleep(9)"));
 }
 KASSERT(sim->refcount == 0, ("sim->refcount == 0"));
 if (sim->mtx == ((void*)0))
  mtx_unlock(mtx);

 if (free_devq)
  cam_simq_free(sim->devq);
 free(sim, M_CAMSIM);
}
