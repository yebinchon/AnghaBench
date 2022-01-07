
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_2__* path; void* status; } ;
struct ccb_dev_advinfo {int buftype; int flags; int * buf; int bufsiz; int provsiz; } ;
union ccb {TYPE_1__ ccb_h; struct ccb_dev_advinfo cdai; } ;
struct cam_ed {int * ext_inq; int ext_inq_len; int * rcap_buf; int rcap_len; int * physpath; int physpath_len; int * serial_num; int serial_num_len; int * device_id; int device_id_len; } ;
typedef int off_t ;
struct TYPE_5__ {struct cam_ed* device; } ;


 int AC_ADVINFO_CHANGED ;
 void* CAM_REQ_ABORTED ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_INVALID ;
 int CDAI_FLAG_STORE ;





 int MA_OWNED ;
 int M_CAMXPT ;
 int M_NOWAIT ;
 int free (int *,int ) ;
 void* malloc (int ,int ,int ) ;
 int memcpy (int *,int *,int ) ;
 int xpt_async (int ,TYPE_2__*,void*) ;
 int xpt_path_assert (TYPE_2__*,int ) ;

__attribute__((used)) static void
scsi_dev_advinfo(union ccb *start_ccb)
{
 struct cam_ed *device;
 struct ccb_dev_advinfo *cdai;
 off_t amt;

 xpt_path_assert(start_ccb->ccb_h.path, MA_OWNED);
 start_ccb->ccb_h.status = CAM_REQ_INVALID;
 device = start_ccb->ccb_h.path->device;
 cdai = &start_ccb->cdai;
 switch(cdai->buftype) {
 case 129:
  if (cdai->flags & CDAI_FLAG_STORE)
   return;
  cdai->provsiz = device->device_id_len;
  if (device->device_id_len == 0)
   break;
  amt = device->device_id_len;
  if (cdai->provsiz > cdai->bufsiz)
   amt = cdai->bufsiz;
  memcpy(cdai->buf, device->device_id, amt);
  break;
 case 128:
  if (cdai->flags & CDAI_FLAG_STORE)
   return;
  cdai->provsiz = device->serial_num_len;
  if (device->serial_num_len == 0)
   break;
  amt = device->serial_num_len;
  if (cdai->provsiz > cdai->bufsiz)
   amt = cdai->bufsiz;
  memcpy(cdai->buf, device->serial_num, amt);
  break;
 case 131:
  if (cdai->flags & CDAI_FLAG_STORE) {
   if (device->physpath != ((void*)0)) {
    free(device->physpath, M_CAMXPT);
    device->physpath = ((void*)0);
    device->physpath_len = 0;
   }

   if (cdai->bufsiz == 0)
    break;
   device->physpath = malloc(cdai->bufsiz, M_CAMXPT, M_NOWAIT);
   if (device->physpath == ((void*)0)) {
    start_ccb->ccb_h.status = CAM_REQ_ABORTED;
    return;
   }
   device->physpath_len = cdai->bufsiz;
   memcpy(device->physpath, cdai->buf, cdai->bufsiz);
  } else {
   cdai->provsiz = device->physpath_len;
   if (device->physpath_len == 0)
    break;
   amt = device->physpath_len;
   if (cdai->provsiz > cdai->bufsiz)
    amt = cdai->bufsiz;
   memcpy(cdai->buf, device->physpath, amt);
  }
  break;
 case 130:
  if (cdai->flags & CDAI_FLAG_STORE) {
   if (device->rcap_buf != ((void*)0)) {
    free(device->rcap_buf, M_CAMXPT);
    device->rcap_buf = ((void*)0);
   }

   device->rcap_len = cdai->bufsiz;

   if (cdai->bufsiz == 0)
    break;

   device->rcap_buf = malloc(cdai->bufsiz, M_CAMXPT,
        M_NOWAIT);
   if (device->rcap_buf == ((void*)0)) {
    start_ccb->ccb_h.status = CAM_REQ_ABORTED;
    return;
   }

   memcpy(device->rcap_buf, cdai->buf, cdai->bufsiz);
  } else {
   cdai->provsiz = device->rcap_len;
   if (device->rcap_len == 0)
    break;
   amt = device->rcap_len;
   if (cdai->provsiz > cdai->bufsiz)
    amt = cdai->bufsiz;
   memcpy(cdai->buf, device->rcap_buf, amt);
  }
  break;
 case 132:




  if (cdai->flags & CDAI_FLAG_STORE)
   return;
  cdai->provsiz = device->ext_inq_len;
  if (device->ext_inq_len == 0)
   break;
  amt = device->ext_inq_len;
  if (cdai->provsiz > cdai->bufsiz)
   amt = cdai->bufsiz;
  memcpy(cdai->buf, device->ext_inq, amt);
  break;
 default:
  return;
 }
 start_ccb->ccb_h.status = CAM_REQ_CMP;

 if (cdai->flags & CDAI_FLAG_STORE) {
  xpt_async(AC_ADVINFO_CHANGED, start_ccb->ccb_h.path,
     (void *)(uintptr_t)cdai->buftype);
 }
}
