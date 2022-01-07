
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; struct cam_path* path; } ;
struct ccb_nvmeio {int dummy; } ;
union ccb {TYPE_1__ ccb_h; struct ccb_nvmeio nvmeio; } ;
typedef int uint8_t ;
struct cam_periph {int path; scalar_t__ softc; } ;
struct cam_path {int dummy; } ;
struct TYPE_5__ {int action; int ns; int cd; scalar_t__ restart; } ;
typedef TYPE_2__ nvme_probe_softc ;
typedef int lun_id_t ;


 int CAM_DEBUG (struct cam_path*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_DEV_QFREEZE ;
 int CAM_DIR_IN ;
 int NVME_OPC_IDENTIFY ;


 int NVME_PROBE_SET_ACTION (TYPE_2__*,int) ;
 int cam_fill_nvmeadmin (struct ccb_nvmeio*,int ,int ,int ,int *,int,int) ;
 int nvme_ns_cmd (struct ccb_nvmeio*,int ,int ,int,int ,int ,int ,int ,int ) ;
 int nvme_probe_done ;
 int panic (char*,int) ;
 int xpt_action (union ccb*) ;
 int xpt_path_lun_id (int ) ;

__attribute__((used)) static void
nvme_probe_start(struct cam_periph *periph, union ccb *start_ccb)
{
 struct ccb_nvmeio *nvmeio;
 nvme_probe_softc *softc;
 struct cam_path *path;
 lun_id_t lun;

 CAM_DEBUG(start_ccb->ccb_h.path, CAM_DEBUG_TRACE, ("nvme_probe_start\n"));

 softc = (nvme_probe_softc *)periph->softc;
 path = start_ccb->ccb_h.path;
 nvmeio = &start_ccb->nvmeio;
 lun = xpt_path_lun_id(periph->path);

 if (softc->restart) {
  softc->restart = 0;
  NVME_PROBE_SET_ACTION(softc, 129);
 }

 switch (softc->action) {
 case 129:
  cam_fill_nvmeadmin(nvmeio,
      0,
      nvme_probe_done,
      CAM_DIR_IN,
      (uint8_t *)&softc->cd,
      sizeof(softc->cd),
      30 * 1000);
  nvme_ns_cmd(nvmeio, NVME_OPC_IDENTIFY, 0,
      1, 0, 0, 0, 0, 0);
  break;
 case 128:
  cam_fill_nvmeadmin(nvmeio,
      0,
      nvme_probe_done,
      CAM_DIR_IN,
      (uint8_t *)&softc->ns,
      sizeof(softc->ns),
      30 * 1000);
  nvme_ns_cmd(nvmeio, NVME_OPC_IDENTIFY, lun,
      0, 0, 0, 0, 0, 0);
  break;
 default:
  panic("nvme_probe_start: invalid action state 0x%x\n", softc->action);
 }
 start_ccb->ccb_h.flags |= CAM_DEV_QFREEZE;
 xpt_action(start_ccb);
}
