
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
typedef scalar_t__ uint32_t ;
struct TYPE_2__ {int nexus; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; } ;
struct ctl_lun {int flags; scalar_t__ res_idx; int lun_lock; } ;


 int CTL_DEBUG_PRINT (char*) ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_LUN_RESERVED ;
 int CTL_RETVAL_COMPLETE ;
 int ctl_done (union ctl_io*) ;
 scalar_t__ ctl_get_initindex (int *) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

int
ctl_scsi_release(struct ctl_scsiio *ctsio)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 uint32_t residx;

 CTL_DEBUG_PRINT(("ctl_scsi_release\n"));

 residx = ctl_get_initindex(&ctsio->io_hdr.nexus);
 mtx_lock(&lun->lun_lock);
 if ((lun->flags & CTL_LUN_RESERVED) && (lun->res_idx == residx))
   lun->flags &= ~CTL_LUN_RESERVED;

 mtx_unlock(&lun->lun_lock);

 ctl_set_success(ctsio);
 ctl_done((union ctl_io *)ctsio);
 return (CTL_RETVAL_COMPLETE);
}
