
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_9__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_18__ {int flags; } ;
struct TYPE_17__ {int priority; } ;
struct TYPE_20__ {int func_code; int status; size_t target_id; void (* cbfcnp ) (struct cam_periph*,union ccb*) ;TYPE_6__* ppriv_ptr0; int flags; TYPE_4__ pinfo; int path_id; struct cam_path* path; int target_lun; } ;
struct TYPE_16__ {int hba_misc; int hba_inquiry; int max_target; size_t initiator_id; int max_lun; } ;
union ccb {TYPE_5__ crcn; TYPE_7__ ccb_h; TYPE_3__ cpi; } ;
typedef int uintmax_t ;
typedef size_t u_int ;
typedef size_t target_id_t ;
struct mtx {int dummy; } ;
struct cam_periph {int dummy; } ;
struct cam_path {struct cam_ed* device; struct cam_et* target; TYPE_1__* bus; } ;
struct cam_et {TYPE_2__* bus; struct mtx luns_mtx; TYPE_10__* luns; } ;
struct cam_ed {int flags; } ;
struct TYPE_19__ {size_t counter; size_t* lunindex; union ccb* request_ccb; TYPE_3__* cpi; } ;
typedef TYPE_6__ scsi_scan_bus_info ;
typedef int path_id_t ;
typedef int lun_id_t ;
typedef int cam_status ;
struct TYPE_21__ {int quirks; } ;
struct TYPE_15__ {struct mtx eb_mtx; } ;
struct TYPE_14__ {int last_reset; } ;
struct TYPE_13__ {int length; } ;


 int CAM_CAN_GET_SIMPLE_LUN (TYPE_10__*,size_t) ;
 int CAM_DEBUG (struct cam_path*,int ,char*) ;
 int CAM_DEBUG_PROBE ;
 int CAM_DEBUG_TRACE ;
 int CAM_DEV_INQUIRY_DATA_VALID ;
 int CAM_DEV_UNCONFIGURED ;
 int CAM_GET_LUN (TYPE_10__*,size_t,int ) ;
 int CAM_GET_SIMPLE_LUN (TYPE_10__*,size_t,int ) ;
 int CAM_PRIORITY_NONE ;
 int CAM_QUIRK_NOLUNS ;
 int CAM_REQ_CMP ;
 void* CAM_RESRC_UNAVAIL ;
 int CAM_SCSI2_MAXLUN ;
 int CAM_UNLOCKED ;
 int CAN_SRCH_HI_DENSE (struct cam_ed*) ;
 int CAN_SRCH_HI_SPARSE (struct cam_ed*) ;
 int M_CAMXPT ;
 int M_NOWAIT ;
 int M_ZERO ;
 int PIM_EXTLUNS ;
 int PIM_NOBUSRESET ;
 int PIM_NOINITIATOR ;
 int PIM_SEQSCAN ;
 int PI_SDTR_ABLE ;
 int PI_WIDE_16 ;
 int PI_WIDE_32 ;
 TYPE_9__* SCSI_QUIRK (struct cam_ed*) ;
 struct cam_ed* TAILQ_NEXT (struct cam_ed*,int ) ;
 int XPT_PATH_INQ ;
 int XPT_RESET_BUS ;



 int cam_ccb_status (union ccb*) ;
 int free (TYPE_6__*,int ) ;
 int links ;
 scalar_t__ malloc (int ,int ,int) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 int printf (char*,int) ;
 int scsi_4btoul (int ) ;
 int timevalisset (int *) ;
 int xpt_action (union ccb*) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 int xpt_create_path (struct cam_path**,int *,int ,size_t,int ) ;
 int xpt_done (union ccb*) ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_free_path (struct cam_path*) ;
 struct mtx* xpt_path_mtx (struct cam_path*) ;
 int xpt_setup_ccb (TYPE_7__*,struct cam_path*,int ) ;

__attribute__((used)) static void
scsi_scan_bus(struct cam_periph *periph, union ccb *request_ccb)
{
 struct mtx *mtx;

 CAM_DEBUG(request_ccb->ccb_h.path, CAM_DEBUG_TRACE,
    ("scsi_scan_bus\n"));
 switch (request_ccb->ccb_h.func_code) {
 case 130:
 case 128:
 {
  scsi_scan_bus_info *scan_info;
  union ccb *work_ccb, *reset_ccb;
  struct cam_path *path;
  u_int i;
  u_int low_target, max_target;
  u_int initiator_id;


  work_ccb = xpt_alloc_ccb_nowait();
  if (work_ccb == ((void*)0)) {
   request_ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
   xpt_done(request_ccb);
   return;
  }
  xpt_setup_ccb(&work_ccb->ccb_h, request_ccb->ccb_h.path,
         request_ccb->ccb_h.pinfo.priority);
  work_ccb->ccb_h.func_code = XPT_PATH_INQ;
  xpt_action(work_ccb);
  if (work_ccb->ccb_h.status != CAM_REQ_CMP) {
   request_ccb->ccb_h.status = work_ccb->ccb_h.status;
   xpt_free_ccb(work_ccb);
   xpt_done(request_ccb);
   return;
  }

  if ((work_ccb->cpi.hba_misc & PIM_NOINITIATOR) != 0) {




   request_ccb->ccb_h.status = CAM_REQ_CMP;
   xpt_free_ccb(work_ccb);
   xpt_done(request_ccb);
   return;
  }


  if ((work_ccb->cpi.hba_inquiry &
      (PI_WIDE_32|PI_WIDE_16|PI_SDTR_ABLE)) &&
      !(work_ccb->cpi.hba_misc & PIM_NOBUSRESET) &&
      !timevalisset(&request_ccb->ccb_h.path->bus->last_reset) &&
      (reset_ccb = xpt_alloc_ccb_nowait()) != ((void*)0)) {
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


  scan_info = (scsi_scan_bus_info *) malloc(sizeof(scsi_scan_bus_info) +
      (work_ccb->cpi.max_target * sizeof (u_int)), M_CAMXPT, M_ZERO|M_NOWAIT);
  if (scan_info == ((void*)0)) {
   request_ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
   xpt_free_ccb(work_ccb);
   xpt_done(request_ccb);
   return;
  }
  CAM_DEBUG(request_ccb->ccb_h.path, CAM_DEBUG_TRACE,
     ("SCAN start for %p\n", scan_info));
  scan_info->request_ccb = request_ccb;
  scan_info->cpi = &work_ccb->cpi;


  max_target = scan_info->cpi->max_target;
  low_target = 0;
  initiator_id = scan_info->cpi->initiator_id;






  if (request_ccb->ccb_h.func_code == 128) {
   max_target = low_target = request_ccb->ccb_h.target_id;
   scan_info->counter = 0;
  } else if (scan_info->cpi->hba_misc & PIM_SEQSCAN) {
   max_target = 0;
   scan_info->counter = 0;
  } else {
   scan_info->counter = scan_info->cpi->max_target + 1;
   if (scan_info->cpi->initiator_id < scan_info->counter) {
    scan_info->counter--;
   }
  }
  mtx = xpt_path_mtx(scan_info->request_ccb->ccb_h.path);
  mtx_unlock(mtx);

  for (i = low_target; i <= max_target; i++) {
   cam_status status;
   if (i == initiator_id)
    continue;

   status = xpt_create_path(&path, ((void*)0),
       request_ccb->ccb_h.path_id,
       i, 0);
   if (status != CAM_REQ_CMP) {
    printf("scsi_scan_bus: xpt_create_path failed"
           " with status %#x, bus scan halted\n",
           status);
    free(scan_info, M_CAMXPT);
    request_ccb->ccb_h.status = status;
    xpt_free_ccb(work_ccb);
    xpt_done(request_ccb);
    break;
   }
   work_ccb = xpt_alloc_ccb_nowait();
   if (work_ccb == ((void*)0)) {
    xpt_free_ccb((union ccb *)scan_info->cpi);
    free(scan_info, M_CAMXPT);
    xpt_free_path(path);
    request_ccb->ccb_h.status = CAM_RESRC_UNAVAIL;
    xpt_done(request_ccb);
    break;
   }
   xpt_setup_ccb(&work_ccb->ccb_h, path,
          request_ccb->ccb_h.pinfo.priority);
   work_ccb->ccb_h.func_code = 129;
   work_ccb->ccb_h.cbfcnp = scsi_scan_bus;
   work_ccb->ccb_h.flags |= CAM_UNLOCKED;
   work_ccb->ccb_h.ppriv_ptr0 = scan_info;
   work_ccb->crcn.flags = request_ccb->crcn.flags;
   xpt_action(work_ccb);
  }

  mtx_lock(mtx);
  break;
 }
 case 129:
 {
  cam_status status;
  struct cam_path *path, *oldpath;
  scsi_scan_bus_info *scan_info;
  struct cam_et *target;
  struct cam_ed *device, *nextdev;
  int next_target;
  path_id_t path_id;
  target_id_t target_id;
  lun_id_t lun_id;

  oldpath = request_ccb->ccb_h.path;

  status = cam_ccb_status(request_ccb);
  scan_info = (scsi_scan_bus_info *)request_ccb->ccb_h.ppriv_ptr0;
  path_id = request_ccb->ccb_h.path_id;
  target_id = request_ccb->ccb_h.target_id;
  lun_id = request_ccb->ccb_h.target_lun;
  target = request_ccb->ccb_h.path->target;
  next_target = 1;

  mtx = xpt_path_mtx(scan_info->request_ccb->ccb_h.path);
  mtx_lock(mtx);
  mtx_lock(&target->luns_mtx);
  if (target->luns) {
   lun_id_t first;
   u_int nluns = scsi_4btoul(target->luns->length) / 8;






   CAM_GET_LUN(target->luns, 0, first);
   if (first == 0 && scan_info->lunindex[target_id] == 0) {
    scan_info->lunindex[target_id]++;
   }




   while (scan_info->lunindex[target_id] < nluns) {
    if (scan_info->cpi->hba_misc & PIM_EXTLUNS) {
     CAM_GET_LUN(target->luns,
         scan_info->lunindex[target_id],
         lun_id);
     break;
    }

    if (CAM_CAN_GET_SIMPLE_LUN(target->luns,
        scan_info->lunindex[target_id])) {
     CAM_GET_SIMPLE_LUN(target->luns,
         scan_info->lunindex[target_id],
         lun_id);
     break;
    }

    scan_info->lunindex[target_id]++;
   }

   if (scan_info->lunindex[target_id] < nluns) {
    mtx_unlock(&target->luns_mtx);
    next_target = 0;
    CAM_DEBUG(request_ccb->ccb_h.path,
        CAM_DEBUG_PROBE,
       ("next lun to try at index %u is %jx\n",
       scan_info->lunindex[target_id],
       (uintmax_t)lun_id));
    scan_info->lunindex[target_id]++;
   } else {
    mtx_unlock(&target->luns_mtx);

   }
  } else {
   mtx_unlock(&target->luns_mtx);
   device = request_ccb->ccb_h.path->device;


   mtx_lock(&target->bus->eb_mtx);
   nextdev = device;
   while ((nextdev = TAILQ_NEXT(nextdev, links)) != ((void*)0))
    if ((nextdev->flags & CAM_DEV_UNCONFIGURED) == 0)
     break;
   mtx_unlock(&target->bus->eb_mtx);
   if (nextdev != ((void*)0)) {
    next_target = 0;

   } else if (SCSI_QUIRK(device)->quirks & CAM_QUIRK_NOLUNS) {
    next_target = 1;


   } else if ((device->flags & CAM_DEV_UNCONFIGURED) == 0) {
    if (lun_id < (CAM_SCSI2_MAXLUN-1) ||
        CAN_SRCH_HI_DENSE(device))
     next_target = 0;


   } else if ((device->flags & CAM_DEV_INQUIRY_DATA_VALID) != 0) {
    if (lun_id < (CAM_SCSI2_MAXLUN-1) ||
        CAN_SRCH_HI_SPARSE(device))
     next_target = 0;
   }
   if (next_target == 0) {
    lun_id++;
    if (lun_id > scan_info->cpi->max_lun)
     next_target = 1;
   }
  }




  if (next_target) {
   int done;




   xpt_free_path(oldpath);
 hop_again:
   done = 0;
   if (scan_info->request_ccb->ccb_h.func_code == 128) {
    done = 1;
   } else if (scan_info->cpi->hba_misc & PIM_SEQSCAN) {
    scan_info->counter++;
    if (scan_info->counter ==
        scan_info->cpi->initiator_id) {
     scan_info->counter++;
    }
    if (scan_info->counter >=
        scan_info->cpi->max_target+1) {
     done = 1;
    }
   } else {
    scan_info->counter--;
    if (scan_info->counter == 0) {
     done = 1;
    }
   }
   if (done) {
    mtx_unlock(mtx);
    xpt_free_ccb(request_ccb);
    xpt_free_ccb((union ccb *)scan_info->cpi);
    request_ccb = scan_info->request_ccb;
    CAM_DEBUG(request_ccb->ccb_h.path,
        CAM_DEBUG_TRACE,
       ("SCAN done for %p\n", scan_info));
    free(scan_info, M_CAMXPT);
    request_ccb->ccb_h.status = CAM_REQ_CMP;
    xpt_done(request_ccb);
    break;
   }

   if ((scan_info->cpi->hba_misc & PIM_SEQSCAN) == 0) {
    mtx_unlock(mtx);
    xpt_free_ccb(request_ccb);
    break;
   }
   status = xpt_create_path(&path, ((void*)0),
       scan_info->request_ccb->ccb_h.path_id,
       scan_info->counter, 0);
   if (status != CAM_REQ_CMP) {
    mtx_unlock(mtx);
    printf("scsi_scan_bus: xpt_create_path failed"
        " with status %#x, bus scan halted\n",
               status);
    xpt_free_ccb(request_ccb);
    xpt_free_ccb((union ccb *)scan_info->cpi);
    request_ccb = scan_info->request_ccb;
    free(scan_info, M_CAMXPT);
    request_ccb->ccb_h.status = status;
    xpt_done(request_ccb);
    break;
   }
   xpt_setup_ccb(&request_ccb->ccb_h, path,
       request_ccb->ccb_h.pinfo.priority);
   request_ccb->ccb_h.func_code = 129;
   request_ccb->ccb_h.cbfcnp = scsi_scan_bus;
   request_ccb->ccb_h.flags |= CAM_UNLOCKED;
   request_ccb->ccb_h.ppriv_ptr0 = scan_info;
   request_ccb->crcn.flags =
       scan_info->request_ccb->crcn.flags;
  } else {
   status = xpt_create_path(&path, ((void*)0),
       path_id, target_id, lun_id);






   xpt_free_path(oldpath);
   if (status != CAM_REQ_CMP) {
    printf("scsi_scan_bus: xpt_create_path failed "
           "with status %#x, halting LUN scan\n",
            status);
    goto hop_again;
   }
   xpt_setup_ccb(&request_ccb->ccb_h, path,
          request_ccb->ccb_h.pinfo.priority);
   request_ccb->ccb_h.func_code = 129;
   request_ccb->ccb_h.cbfcnp = scsi_scan_bus;
   request_ccb->ccb_h.flags |= CAM_UNLOCKED;
   request_ccb->ccb_h.ppriv_ptr0 = scan_info;
   request_ccb->crcn.flags =
    scan_info->request_ccb->crcn.flags;
  }
  mtx_unlock(mtx);
  xpt_action(request_ccb);
  break;
 }
 default:
  break;
 }
}
