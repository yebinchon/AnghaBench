
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
typedef int uint32_t ;
struct scsi_prevent {int how; } ;
struct TYPE_3__ {int nexus; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; scalar_t__ cdb; } ;
struct ctl_lun {int flags; TYPE_2__* backend; int lun_lock; int prevent_count; int * prevent; } ;
struct TYPE_4__ {int (* config_write ) (union ctl_io*) ;} ;


 int CTL_DEBUG_PRINT (char*) ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_LUN_REMOVABLE ;
 int CTL_RETVAL_COMPLETE ;
 int PR_PREVENT ;
 int ctl_clear_mask (int *,int ) ;
 int ctl_done (union ctl_io*) ;
 int ctl_get_initindex (int *) ;
 scalar_t__ ctl_is_set (int *,int ) ;
 int ctl_set_invalid_opcode (struct ctl_scsiio*) ;
 int ctl_set_mask (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int stub1 (union ctl_io*) ;

int
ctl_prevent_allow(struct ctl_scsiio *ctsio)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_prevent *cdb;
 int retval;
 uint32_t initidx;

 CTL_DEBUG_PRINT(("ctl_prevent_allow\n"));

 cdb = (struct scsi_prevent *)ctsio->cdb;

 if ((lun->flags & CTL_LUN_REMOVABLE) == 0 || lun->prevent == ((void*)0)) {
  ctl_set_invalid_opcode(ctsio);
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 }

 initidx = ctl_get_initindex(&ctsio->io_hdr.nexus);
 mtx_lock(&lun->lun_lock);
 if ((cdb->how & PR_PREVENT) &&
     ctl_is_set(lun->prevent, initidx) == 0) {
  ctl_set_mask(lun->prevent, initidx);
  lun->prevent_count++;
 } else if ((cdb->how & PR_PREVENT) == 0 &&
     ctl_is_set(lun->prevent, initidx)) {
  ctl_clear_mask(lun->prevent, initidx);
  lun->prevent_count--;
 }
 mtx_unlock(&lun->lun_lock);
 retval = lun->backend->config_write((union ctl_io *)ctsio);
 return (retval);
}
