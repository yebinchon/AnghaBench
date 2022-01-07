
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct cam_devq {int dummy; } ;
typedef int cam_status ;
struct TYPE_7__ {int ich_func; } ;
struct TYPE_6__ {int cam_doneq; int cam_doneq_mtx; } ;
struct TYPE_5__ {TYPE_3__ xpt_config_hook; int xpt_lock; int boot_delay; int xpt_taskq; int xpt_highpower_lock; int num_highpower; int highpowerq; int ccb_scanq; int xpt_busses; } ;


 int CAM_BOOT_DELAY ;
 int CAM_LUN_WILDCARD ;
 int CAM_MAX_HIGHPOWER ;
 int CAM_PERIPH_BIO ;
 int CAM_REQ_CMP ;
 int CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int CAM_XPT_PATH_ID ;
 int EINVAL ;
 int ENOMEM ;
 int MAXCPU ;
 int MTX_DEF ;
 int M_WAITOK ;
 int STAILQ_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 TYPE_2__* cam_doneqs ;
 int cam_num_doneqs ;
 int cam_periph_alloc (int ,int *,int *,int *,char*,int ,struct cam_path*,int *,int ,struct cam_sim*) ;
 int cam_proc ;
 struct cam_sim* cam_sim_alloc (int ,int ,char*,int *,int ,int *,int ,int ,struct cam_devq*) ;
 struct cam_devq* cam_simq_alloc (int) ;
 scalar_t__ config_intrhook_establish (TYPE_3__*) ;
 int kproc_kthread_add (int ,TYPE_2__*,int *,int *,int ,int ,char*,char*,int) ;
 int mp_ncpus ;
 int mtx_init (int *,char*,int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,...) ;
 int taskqueue_create (char*,int ,int ,int *) ;
 int taskqueue_thread_enqueue ;
 int xpt_bus_register (struct cam_sim*,int *,int ) ;
 int xpt_config ;
 int xpt_create_path (struct cam_path**,int *,int ,int ,int ) ;
 int xpt_done_td ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_path_lock (struct cam_path*) ;
 int xpt_path_unlock (struct cam_path*) ;
 int xptaction ;
 int xptpoll ;
 int xptregister ;
 TYPE_1__ xsoftc ;

__attribute__((used)) static int
xpt_init(void *dummy)
{
 struct cam_sim *xpt_sim;
 struct cam_path *path;
 struct cam_devq *devq;
 cam_status status;
 int error, i;

 TAILQ_INIT(&xsoftc.xpt_busses);
 TAILQ_INIT(&xsoftc.ccb_scanq);
 STAILQ_INIT(&xsoftc.highpowerq);
 xsoftc.num_highpower = CAM_MAX_HIGHPOWER;

 mtx_init(&xsoftc.xpt_lock, "XPT lock", ((void*)0), MTX_DEF);
 mtx_init(&xsoftc.xpt_highpower_lock, "XPT highpower lock", ((void*)0), MTX_DEF);
 xsoftc.xpt_taskq = taskqueue_create("CAM XPT task", M_WAITOK,
     taskqueue_thread_enqueue, &xsoftc.xpt_taskq);
 devq = cam_simq_alloc(16);
 xpt_sim = cam_sim_alloc(xptaction,
    xptpoll,
    "xpt",
             ((void*)0),
            0,
           &xsoftc.xpt_lock,
                            0,
                                   0,
    devq);
 if (xpt_sim == ((void*)0))
  return (ENOMEM);

 mtx_lock(&xsoftc.xpt_lock);
 if ((status = xpt_bus_register(xpt_sim, ((void*)0), 0)) != CAM_SUCCESS) {
  mtx_unlock(&xsoftc.xpt_lock);
  printf("xpt_init: xpt_bus_register failed with status %#x,"
         " failing attach\n", status);
  return (EINVAL);
 }
 mtx_unlock(&xsoftc.xpt_lock);






 if ((status = xpt_create_path(&path, ((void*)0), CAM_XPT_PATH_ID,
          CAM_TARGET_WILDCARD,
          CAM_LUN_WILDCARD)) != CAM_REQ_CMP) {
  printf("xpt_init: xpt_create_path failed with status %#x,"
         " failing attach\n", status);
  return (EINVAL);
 }
 xpt_path_lock(path);
 cam_periph_alloc(xptregister, ((void*)0), ((void*)0), ((void*)0), "xpt", CAM_PERIPH_BIO,
    path, ((void*)0), 0, xpt_sim);
 xpt_path_unlock(path);
 xpt_free_path(path);

 if (cam_num_doneqs < 1)
  cam_num_doneqs = 1 + mp_ncpus / 6;
 else if (cam_num_doneqs > MAXCPU)
  cam_num_doneqs = MAXCPU;
 for (i = 0; i < cam_num_doneqs; i++) {
  mtx_init(&cam_doneqs[i].cam_doneq_mtx, "CAM doneq", ((void*)0),
      MTX_DEF);
  STAILQ_INIT(&cam_doneqs[i].cam_doneq);
  error = kproc_kthread_add(xpt_done_td, &cam_doneqs[i],
      &cam_proc, ((void*)0), 0, 0, "cam", "doneq%d", i);
  if (error != 0) {
   cam_num_doneqs = i;
   break;
  }
 }
 if (cam_num_doneqs < 1) {
  printf("xpt_init: Cannot init completion queues "
         "- failing attach\n");
  return (ENOMEM);
 }



 xsoftc.xpt_config_hook.ich_func = xpt_config;
 if (config_intrhook_establish(&xsoftc.xpt_config_hook) != 0) {
  printf("xpt_init: config_intrhook_establish failed "
         "- failing attach\n");
 }

 return (0);
}
