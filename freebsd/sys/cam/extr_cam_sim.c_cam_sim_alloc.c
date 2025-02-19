
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct mtx {int dummy; } ;
struct cam_sim {char const* sim_name; int max_tagged_dev_openings; int max_dev_openings; int refcount; int callout; int flags; struct mtx* mtx; struct cam_devq* devq; scalar_t__ bus_id; int unit_number; int * sim_dev; int path_id; void* softc; int sim_poll; int sim_action; } ;
struct cam_devq {int dummy; } ;
typedef int sim_poll_func ;
typedef int sim_action_func ;


 int CAM_PATH_ANY ;
 int CAM_SIM_MPSAFE ;
 struct mtx Giant ;
 int M_CAMSIM ;
 int M_NOWAIT ;
 int M_ZERO ;
 int callout_init (int *,int) ;
 scalar_t__ malloc (int,int ,int) ;

struct cam_sim *
cam_sim_alloc(sim_action_func sim_action, sim_poll_func sim_poll,
       const char *sim_name, void *softc, u_int32_t unit,
       struct mtx *mtx, int max_dev_transactions,
       int max_tagged_dev_transactions, struct cam_devq *queue)
{
 struct cam_sim *sim;

 sim = (struct cam_sim *)malloc(sizeof(struct cam_sim),
     M_CAMSIM, M_ZERO | M_NOWAIT);

 if (sim == ((void*)0))
  return (((void*)0));

 sim->sim_action = sim_action;
 sim->sim_poll = sim_poll;
 sim->sim_name = sim_name;
 sim->softc = softc;
 sim->path_id = CAM_PATH_ANY;
 sim->sim_dev = ((void*)0);
 sim->unit_number = unit;
 sim->bus_id = 0;
 sim->max_tagged_dev_openings = max_tagged_dev_transactions;
 sim->max_dev_openings = max_dev_transactions;
 sim->flags = 0;
 sim->refcount = 1;
 sim->devq = queue;
 sim->mtx = mtx;
 if (mtx == &Giant) {
  sim->flags |= 0;
  callout_init(&sim->callout, 0);
 } else {
  sim->flags |= CAM_SIM_MPSAFE;
  callout_init(&sim->callout, 1);
 }
 return (sim);
}
