
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ccb {int dummy; } ccb ;
struct mmc_params {int dummy; } ;
struct cam_periph {TYPE_4__* path; TYPE_2__* softc; } ;
struct TYPE_6__ {scalar_t__ restart; int action; struct cam_periph* periph; scalar_t__ acmd41_count; scalar_t__ flags; } ;
typedef TYPE_2__ mmcprobe_softc ;
typedef int cam_status ;
struct TYPE_7__ {TYPE_1__* device; } ;
struct TYPE_5__ {int flags; int mmc_ident_data; } ;


 int CAM_DEBUG (TYPE_4__*,int ,char*) ;
 int CAM_DEBUG_PROBE ;
 int CAM_DEBUG_TRACE ;
 int CAM_DEV_UNCONFIGURED ;
 int CAM_PRIORITY_XPT ;
 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int M_CAMXPT ;
 int M_NOWAIT ;
 int PROBE_IDENTIFY ;
 int PROBE_INVALID ;
 int PROBE_RESET ;
 int PROBE_SET_ACTION (TYPE_2__*,int ) ;
 int cam_periph_acquire (struct cam_periph*) ;
 scalar_t__ malloc (int,int ,int ) ;
 int memset (int *,int ,int) ;
 int printf (char*,...) ;
 int xpt_schedule (struct cam_periph*,int ) ;

__attribute__((used)) static cam_status
mmcprobe_register(struct cam_periph *periph, void *arg)
{
 mmcprobe_softc *softc;
 union ccb *request_ccb;
 int status;

 CAM_DEBUG(periph->path, CAM_DEBUG_TRACE, ("mmcprobe_register\n"));

 request_ccb = (union ccb *)arg;
 if (request_ccb == ((void*)0)) {
  printf("mmcprobe_register: no probe CCB, "
         "can't register device\n");
  return(CAM_REQ_CMP_ERR);
 }

 softc = (mmcprobe_softc *)malloc(sizeof(*softc), M_CAMXPT, M_NOWAIT);

 if (softc == ((void*)0)) {
  printf("proberegister: Unable to probe new device. "
         "Unable to allocate softc\n");
  return(CAM_REQ_CMP_ERR);
 }

 softc->flags = 0;
 softc->acmd41_count = 0;
 periph->softc = softc;
 softc->periph = periph;
 softc->action = PROBE_INVALID;
        softc->restart = 0;
 status = cam_periph_acquire(periph);

        memset(&periph->path->device->mmc_ident_data, 0, sizeof(struct mmc_params));
 if (status != 0) {
  printf("proberegister: cam_periph_acquire failed (status=%d)\n",
   status);
  return (CAM_REQ_CMP_ERR);
 }
 CAM_DEBUG(periph->path, CAM_DEBUG_PROBE, ("Probe started\n"));

 if (periph->path->device->flags & CAM_DEV_UNCONFIGURED)
  PROBE_SET_ACTION(softc, PROBE_RESET);
 else
  PROBE_SET_ACTION(softc, PROBE_IDENTIFY);


 xpt_schedule(periph, CAM_PRIORITY_XPT);

 return(CAM_REQ_CMP);
}
