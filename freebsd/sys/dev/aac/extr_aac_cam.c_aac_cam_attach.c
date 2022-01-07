
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cam_sim {int dummy; } ;
struct cam_path {int dummy; } ;
struct cam_devq {int dummy; } ;
struct aac_sim {TYPE_1__* aac_sc; int TargetsPerBus; struct aac_cam* aac_cam; } ;
struct aac_cam {struct cam_path* path; struct cam_sim* sim; struct aac_sim* inf; } ;
typedef int device_t ;
struct TYPE_2__ {int aac_io_lock; int cam_rescan_cb; } ;


 int CAM_LUN_WILDCARD ;
 scalar_t__ CAM_REQ_CMP ;
 scalar_t__ CAM_SUCCESS ;
 int CAM_TARGET_WILDCARD ;
 int EIO ;
 char* HBA_FLAGS_DBG_FUNCTION_ENTRY_B ;
 int TRUE ;
 int aac_cam_action ;
 int aac_cam_poll ;
 int aac_cam_rescan ;
 struct cam_sim* cam_sim_alloc (int ,int ,char*,struct aac_cam*,int ,int *,int,int,struct cam_devq*) ;
 int cam_sim_free (struct cam_sim*,int ) ;
 int cam_sim_path (struct cam_sim*) ;
 struct cam_devq* cam_simq_alloc (int ) ;
 int cam_simq_free (struct cam_devq*) ;
 scalar_t__ device_get_ivars (int ) ;
 scalar_t__ device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int fwprintf (int *,char*,char*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int xpt_bus_deregister (int ) ;
 scalar_t__ xpt_bus_register (struct cam_sim*,int ,int ) ;
 scalar_t__ xpt_create_path (struct cam_path**,int *,int ,int ,int ) ;

__attribute__((used)) static int
aac_cam_attach(device_t dev)
{
 struct cam_devq *devq;
 struct cam_sim *sim;
 struct cam_path *path;
 struct aac_cam *camsc;
 struct aac_sim *inf;

 fwprintf(((void*)0), HBA_FLAGS_DBG_FUNCTION_ENTRY_B, "");

 camsc = (struct aac_cam *)device_get_softc(dev);
 inf = (struct aac_sim *)device_get_ivars(dev);
 camsc->inf = inf;
 camsc->inf->aac_cam = camsc;

 devq = cam_simq_alloc(inf->TargetsPerBus);
 if (devq == ((void*)0))
  return (EIO);

 sim = cam_sim_alloc(aac_cam_action, aac_cam_poll, "aacp", camsc,
     device_get_unit(dev), &inf->aac_sc->aac_io_lock, 1, 1, devq);
 if (sim == ((void*)0)) {
  cam_simq_free(devq);
  return (EIO);
 }


 mtx_lock(&inf->aac_sc->aac_io_lock);
 if (xpt_bus_register(sim, dev, 0) != CAM_SUCCESS) {
  cam_sim_free(sim, TRUE);
  mtx_unlock(&inf->aac_sc->aac_io_lock);
  return (EIO);
 }

 if (xpt_create_path(&path, ((void*)0), cam_sim_path(sim),
     CAM_TARGET_WILDCARD, CAM_LUN_WILDCARD) != CAM_REQ_CMP) {
  xpt_bus_deregister(cam_sim_path(sim));
  cam_sim_free(sim, TRUE);
  mtx_unlock(&inf->aac_sc->aac_io_lock);
  return (EIO);
 }
 inf->aac_sc->cam_rescan_cb = aac_cam_rescan;
 mtx_unlock(&inf->aac_sc->aac_io_lock);

 camsc->sim = sim;
 camsc->path = path;

 return (0);
}
