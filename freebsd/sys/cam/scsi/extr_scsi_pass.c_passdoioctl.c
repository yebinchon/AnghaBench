
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int xpt_opcode ;
struct TYPE_9__ {int priority; } ;
struct TYPE_11__ {int func_code; int flags; int periph_priv; int periph_links; int cbfcnp; TYPE_3__ pinfo; struct pass_io_req* ccb_ioreq; } ;
struct TYPE_7__ {union ccb* cdb_bytes; union ccb* cdb_ptr; } ;
struct TYPE_10__ {int cdb_len; TYPE_1__ cdb_io; int * bio; } ;
union ccb {TYPE_5__ ccb_h; TYPE_4__ csio; } ;
typedef int uint32_t ;
typedef int u_long ;
struct thread {int td_proc; } ;
struct pass_softc {int flags; int pass_zone; int done_queue; int active_queue; int incoming_queue; } ;
struct TYPE_8__ {int num_bufs_used; } ;
struct pass_io_req {union ccb ccb; int user_periph_priv; int user_periph_links; TYPE_2__ mapinfo; union ccb* user_ccb_ptr; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct cam_periph {int path; scalar_t__ softc; } ;
typedef scalar_t__ caddr_t ;





 int CAM_CDB_POINTER ;
 int CAM_PRIORITY_OOB ;
 int CAM_UNLOCKED ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int ENOMEM ;
 int ENOTTY ;
 int IOCDBLEN ;
 int M_WAITOK ;
 int M_ZERO ;
 int PASS_FLAG_ZONE_VALID ;
 int SV_ILP32 ;
 int SV_PROC_FLAG (int ,int ) ;
 struct pass_io_req* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct pass_io_req*,int ) ;
 int TAILQ_REMOVE (int *,struct pass_io_req*,int ) ;
 int XPT_ATA_IO ;
 int XPT_DEV_ADVINFO ;
 int XPT_DEV_MATCH ;
 int XPT_FC_QUEUED ;
 int XPT_FC_USER_CCB ;
 int XPT_FC_XPT_ONLY ;
 int XPT_NVME_ADMIN ;
 int XPT_NVME_IO ;
 int XPT_SCSI_IO ;
 int XPT_SMP_IO ;
 union ccb* cam_periph_getccb (struct cam_periph*,int ) ;
 int cam_periph_ioctl (struct cam_periph*,int,scalar_t__,int ) ;
 int cam_periph_lock (struct cam_periph*) ;
 int cam_periph_unlock (struct cam_periph*) ;
 int copyin (union ccb*,union ccb*,int) ;
 int copyout (union ccb*,union ccb*,int) ;
 int links ;
 int passcreatezone (struct cam_periph*) ;
 int passdone ;
 int passerror ;
 int passmemdone (struct cam_periph*,struct pass_io_req*) ;
 int passmemsetup (struct cam_periph*,struct pass_io_req*) ;
 int passsendccb (struct cam_periph*,union ccb*,union ccb*) ;
 struct pass_io_req* uma_zalloc (int ,int) ;
 int uma_zfree (int ,struct pass_io_req*) ;
 int xpt_action (union ccb*) ;
 union ccb* xpt_alloc_ccb_nowait () ;
 int xpt_free_ccb (union ccb*) ;
 int xpt_print (int ,char*,...) ;
 int xpt_release_ccb (union ccb*) ;
 int xpt_schedule (struct cam_periph*,int ) ;
 int xpt_setup_ccb (TYPE_5__*,int ,int ) ;
 int xpt_setup_ccb_flags (TYPE_5__*,int ,int ,int) ;

__attribute__((used)) static int
passdoioctl(struct cdev *dev, u_long cmd, caddr_t addr, int flag, struct thread *td)
{
 struct cam_periph *periph;
 struct pass_softc *softc;
 int error;
 uint32_t priority;

 periph = (struct cam_periph *)dev->si_drv1;
 cam_periph_lock(periph);
 softc = (struct pass_softc *)periph->softc;

 error = 0;

 switch (cmd) {

 case 130:
 {
  union ccb *inccb;
  union ccb *ccb;
  int ccb_malloced;

  inccb = (union ccb *)addr;





  if (inccb->ccb_h.flags & CAM_UNLOCKED) {
   error = EINVAL;
   break;
  }





  if (inccb->ccb_h.func_code & XPT_FC_XPT_ONLY) {
   xpt_print(periph->path, "CCB function code %#x is "
       "restricted to the XPT device\n",
       inccb->ccb_h.func_code);
   error = ENODEV;
   break;
  }


  priority = inccb->ccb_h.pinfo.priority;
  if (priority <= CAM_PRIORITY_OOB)
      priority += CAM_PRIORITY_OOB + 1;







  if ((inccb->ccb_h.func_code & XPT_FC_QUEUED)
   && ((inccb->ccb_h.func_code & XPT_FC_USER_CCB) == 0)) {
   ccb = cam_periph_getccb(periph, priority);
   ccb_malloced = 0;
  } else {
   ccb = xpt_alloc_ccb_nowait();

   if (ccb != ((void*)0))
    xpt_setup_ccb(&ccb->ccb_h, periph->path,
           priority);
   ccb_malloced = 1;
  }

  if (ccb == ((void*)0)) {
   xpt_print(periph->path, "unable to allocate CCB\n");
   error = ENOMEM;
   break;
  }

  error = passsendccb(periph, ccb, inccb);

  if (ccb_malloced)
   xpt_free_ccb(ccb);
  else
   xpt_release_ccb(ccb);

  break;
 }
 case 128:
 {
  struct pass_io_req *io_req;
  union ccb **user_ccb, *ccb;
  xpt_opcode fc;







  if ((softc->flags & PASS_FLAG_ZONE_VALID) == 0) {
   error = passcreatezone(periph);
   if (error != 0)
    goto bailout;
  }





  cam_periph_unlock(periph);

  io_req = uma_zalloc(softc->pass_zone, M_WAITOK | M_ZERO);
  ccb = &io_req->ccb;
  user_ccb = (union ccb **)addr;
  error = copyin(*user_ccb, ccb, sizeof(*ccb));
  if (error != 0) {
   xpt_print(periph->path, "Copy of user CCB %p to "
      "kernel address %p failed with error %d\n",
      *user_ccb, ccb, error);
   goto camioqueue_error;
  }





  if (ccb->ccb_h.flags & CAM_UNLOCKED) {
   error = EINVAL;
   goto camioqueue_error;
  }

  if (ccb->ccb_h.flags & CAM_CDB_POINTER) {
   if (ccb->csio.cdb_len > IOCDBLEN) {
    error = EINVAL;
    goto camioqueue_error;
   }
   error = copyin(ccb->csio.cdb_io.cdb_ptr,
       ccb->csio.cdb_io.cdb_bytes, ccb->csio.cdb_len);
   if (error != 0)
    goto camioqueue_error;
   ccb->ccb_h.flags &= ~CAM_CDB_POINTER;
  }





  if (ccb->ccb_h.func_code & XPT_FC_XPT_ONLY) {
   xpt_print(periph->path, "CCB function code %#x is "
       "restricted to the XPT device\n",
       ccb->ccb_h.func_code);
   error = ENODEV;
   goto camioqueue_error;
  }






  io_req->user_ccb_ptr = *user_ccb;
  io_req->user_periph_links = ccb->ccb_h.periph_links;
  io_req->user_periph_priv = ccb->ccb_h.periph_priv;





  ccb->ccb_h.ccb_ioreq = io_req;


  priority = ccb->ccb_h.pinfo.priority;
  if (priority <= CAM_PRIORITY_OOB)
      priority += CAM_PRIORITY_OOB + 1;






  xpt_setup_ccb_flags(&ccb->ccb_h, periph->path, priority,
        ccb->ccb_h.flags);





  ccb->ccb_h.cbfcnp = passdone;

  fc = ccb->ccb_h.func_code;




  if ((fc == XPT_SCSI_IO) || (fc == XPT_ATA_IO)
   || (fc == XPT_SMP_IO) || (fc == XPT_DEV_MATCH)
   || (fc == XPT_DEV_ADVINFO)
   || (fc == XPT_NVME_ADMIN) || (fc == XPT_NVME_IO)) {
   error = passmemsetup(periph, io_req);
   if (error != 0)
    goto camioqueue_error;
  } else
   io_req->mapinfo.num_bufs_used = 0;

  cam_periph_lock(periph);




  TAILQ_INSERT_TAIL(&softc->incoming_queue, io_req, links);







  if ((fc & XPT_FC_QUEUED)
   && ((fc & XPT_FC_USER_CCB) == 0)) {
   xpt_schedule(periph, priority);
   break;
  }
  TAILQ_REMOVE(&softc->incoming_queue, io_req, links);
  TAILQ_INSERT_TAIL(&softc->active_queue, io_req, links);

  xpt_action(ccb);






  if ((fc & XPT_FC_QUEUED) == 0) {
   TAILQ_REMOVE(&softc->active_queue, io_req, links);
   TAILQ_INSERT_TAIL(&softc->done_queue, io_req, links);
  }
  break;

camioqueue_error:
  uma_zfree(softc->pass_zone, io_req);
  cam_periph_lock(periph);
  break;
 }
 case 129:
 {
  union ccb **user_ccb;
  struct pass_io_req *io_req;
  int old_error;







  user_ccb = (union ccb **)addr;
  old_error = 0;

  io_req = TAILQ_FIRST(&softc->done_queue);
  if (io_req == ((void*)0)) {
   error = ENOENT;
   break;
  }




  TAILQ_REMOVE(&softc->done_queue, io_req, links);





  cam_periph_unlock(periph);





  error = passmemdone(periph, io_req);

  old_error = error;

  io_req->ccb.ccb_h.periph_links = io_req->user_periph_links;
  io_req->ccb.ccb_h.periph_priv = io_req->user_periph_priv;






  error = copyout(&io_req->ccb, *user_ccb, sizeof(union ccb));
  if (error != 0) {
   xpt_print(periph->path, "Copy to user CCB %p from "
      "kernel address %p failed with error %d\n",
      *user_ccb, &io_req->ccb, error);
  }





  if (old_error != 0)
   error = old_error;

  cam_periph_lock(periph);







  uma_zfree(softc->pass_zone, io_req);
  break;
 }
 default:
  error = cam_periph_ioctl(periph, cmd, addr, passerror);
  break;
 }

bailout:
 cam_periph_unlock(periph);

 return(error);
}
