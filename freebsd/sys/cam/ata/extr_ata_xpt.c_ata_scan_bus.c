
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int priority; } ;
struct TYPE_16__ {int func_code; int status; void (* cbfcnp ) (struct cam_periph*,union ccb*) ;TYPE_6__* ppriv_ptr0; int flags; TYPE_3__ pinfo; int path_id; struct cam_path* path; } ;
struct TYPE_13__ {int flags; } ;
struct TYPE_17__ {int hba_inquiry; int hba_misc; int max_target; } ;
union ccb {TYPE_7__ ccb_h; TYPE_4__ crcn; TYPE_8__ cpi; } ;
struct mtx {int dummy; } ;
struct TYPE_10__ {int valid; int pm_present; } ;
struct TYPE_11__ {TYPE_1__ sata; } ;
struct ccb_trans_settings {TYPE_2__ xport_specific; int type; TYPE_7__ ccb_h; } ;
struct cam_periph {int dummy; } ;
struct cam_path {TYPE_5__* bus; } ;
typedef int cts ;
typedef int cam_status ;
struct TYPE_15__ {int counter; union ccb* request_ccb; TYPE_8__* cpi; } ;
typedef TYPE_6__ ata_scan_bus_info ;
struct TYPE_14__ {int last_reset; } ;


 int CAM_DEBUG (struct cam_path*,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_PRIORITY_NONE ;
 int CAM_REQ_CMP ;
 void* CAM_RESRC_UNAVAIL ;
 int CAM_UNLOCKED ;
 int CTS_SATA_VALID_PM ;
 int CTS_TYPE_CURRENT_SETTINGS ;
 int M_CAMXPT ;
 int M_NOWAIT ;
 int PIM_NOBUSRESET ;
 int PI_SATAPM ;
 int PI_SDTR_ABLE ;
 int PI_WIDE_16 ;
 int PI_WIDE_32 ;
 int XPT_RESET_BUS ;



 int const XPT_SET_TRAN_SETTINGS ;
 int bzero (struct ccb_trans_settings*,int) ;
 int free (TYPE_6__*,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int printf (char*,int) ;
 int timevalisset (int *) ;
 int xpt_action (union ccb*) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 int xpt_create_path (struct cam_path**,int *,int ,int,int ) ;
 int xpt_done (union ccb*) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_free_path (struct cam_path*) ;
 int xpt_path_inq (TYPE_8__*,struct cam_path*) ;
 struct mtx* xpt_path_mtx (struct cam_path*) ;
 int xpt_setup_ccb (TYPE_7__*,struct cam_path*,int ) ;

__attribute__((used)) static void
ata_scan_bus(struct cam_periph *periph, union ccb *request_ccb)
{
 struct cam_path *path;
 ata_scan_bus_info *scan_info;
 union ccb *work_ccb, *reset_ccb;
 struct mtx *mtx;
 cam_status status;

 CAM_DEBUG(request_ccb->ccb_h.path, CAM_DEBUG_TRACE,
    ("xpt_scan_bus\n"));
 switch (request_ccb->ccb_h.func_code) {
 case 130:
 case 128:

  work_ccb = xpt_alloc_ccb_nowait();
  if (work_ccb == ((void*)0)) {
   request_ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
   xpt_done(request_ccb);
   return;
  }
  xpt_path_inq(&work_ccb->cpi, request_ccb->ccb_h.path);
  if (work_ccb->ccb_h.status != CAM_REQ_CMP) {
   request_ccb->ccb_h.status = work_ccb->ccb_h.status;
   xpt_free_ccb(work_ccb);
   xpt_done(request_ccb);
   return;
  }


  if ((work_ccb->cpi.hba_inquiry &
      (PI_WIDE_32|PI_WIDE_16|PI_SDTR_ABLE)) &&
      !(work_ccb->cpi.hba_misc & PIM_NOBUSRESET) &&
      !timevalisset(&request_ccb->ccb_h.path->bus->last_reset)) {
   reset_ccb = xpt_alloc_ccb_nowait();
   if (reset_ccb == ((void*)0)) {
    request_ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
    xpt_free_ccb(work_ccb);
    xpt_done(request_ccb);
    return;
   }
   xpt_setup_ccb(&reset_ccb->ccb_h, request_ccb->ccb_h.path,
         CAM_PRIORITY_NONE);
   reset_ccb->ccb_h.func_code = XPT_RESET_BUS;
   xpt_action(reset_ccb);
   if (reset_ccb->ccb_h.status != CAM_REQ_CMP) {
    request_ccb->ccb_h.status = reset_ccb->ccb_h.status;
    xpt_free_ccb(reset_ccb);
    xpt_free_ccb(work_ccb);
    xpt_done(request_ccb);
    return;
   }
   xpt_free_ccb(reset_ccb);
  }


  scan_info = (ata_scan_bus_info *)
      malloc(sizeof(ata_scan_bus_info), M_CAMXPT, M_NOWAIT);
  if (scan_info == ((void*)0)) {
   request_ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
   xpt_free_ccb(work_ccb);
   xpt_done(request_ccb);
   return;
  }
  scan_info->request_ccb = request_ccb;
  scan_info->cpi = &work_ccb->cpi;

  if (scan_info->cpi->hba_inquiry & PI_SATAPM)
   scan_info->counter = scan_info->cpi->max_target;
  else
   scan_info->counter = 0;

  work_ccb = xpt_alloc_ccb_nowait();
  if (work_ccb == ((void*)0)) {
   free(scan_info, M_CAMXPT);
   request_ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
   xpt_done(request_ccb);
   break;
  }
  mtx = xpt_path_mtx(scan_info->request_ccb->ccb_h.path);
  goto scan_next;
 case 129:
  work_ccb = request_ccb;

  scan_info = (ata_scan_bus_info *)work_ccb->ccb_h.ppriv_ptr0;
  mtx = xpt_path_mtx(scan_info->request_ccb->ccb_h.path);
  mtx_lock(mtx);

  if ((scan_info->cpi->hba_inquiry & PI_SATAPM) &&
      (scan_info->counter == scan_info->cpi->max_target)) {
   if (work_ccb->ccb_h.status == CAM_REQ_CMP) {


    xpt_free_path(work_ccb->ccb_h.path);
    goto done;
   } else {
    struct ccb_trans_settings cts;


    bzero(&cts, sizeof(cts));
    xpt_setup_ccb(&cts.ccb_h,
        work_ccb->ccb_h.path, CAM_PRIORITY_NONE);
    cts.ccb_h.func_code = XPT_SET_TRAN_SETTINGS;
    cts.type = CTS_TYPE_CURRENT_SETTINGS;
    cts.xport_specific.sata.pm_present = 0;
    cts.xport_specific.sata.valid = CTS_SATA_VALID_PM;
    xpt_action((union ccb *)&cts);
   }
  }

  xpt_free_path(work_ccb->ccb_h.path);
  if (scan_info->counter ==
      ((scan_info->cpi->hba_inquiry & PI_SATAPM) ?
      0 : scan_info->cpi->max_target)) {
done:
   mtx_unlock(mtx);
   xpt_free_ccb(work_ccb);
   xpt_free_ccb((union ccb *)scan_info->cpi);
   request_ccb = scan_info->request_ccb;
   free(scan_info, M_CAMXPT);
   request_ccb->ccb_h.status = CAM_REQ_CMP;
   xpt_done(request_ccb);
   break;
  }

  scan_info->counter = (scan_info->counter + 1 ) %
      (scan_info->cpi->max_target + 1);
scan_next:
  status = xpt_create_path(&path, ((void*)0),
      scan_info->request_ccb->ccb_h.path_id,
      scan_info->counter, 0);
  if (status != CAM_REQ_CMP) {
   if (request_ccb->ccb_h.func_code == 129)
    mtx_unlock(mtx);
   printf("xpt_scan_bus: xpt_create_path failed"
       " with status %#x, bus scan halted\n",
       status);
   xpt_free_ccb(work_ccb);
   xpt_free_ccb((union ccb *)scan_info->cpi);
   request_ccb = scan_info->request_ccb;
   free(scan_info, M_CAMXPT);
   request_ccb->ccb_h.status = status;
   xpt_done(request_ccb);
   break;
  }
  xpt_setup_ccb(&work_ccb->ccb_h, path,
      scan_info->request_ccb->ccb_h.pinfo.priority);
  work_ccb->ccb_h.func_code = 129;
  work_ccb->ccb_h.cbfcnp = ata_scan_bus;
  work_ccb->ccb_h.flags |= CAM_UNLOCKED;
  work_ccb->ccb_h.ppriv_ptr0 = scan_info;
  work_ccb->crcn.flags = scan_info->request_ccb->crcn.flags;
  mtx_unlock(mtx);
  if (request_ccb->ccb_h.func_code == 129)
   mtx = ((void*)0);
  xpt_action(work_ccb);
  if (mtx != ((void*)0))
   mtx_lock(mtx);
  break;
 default:
  break;
 }
}
