
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
typedef int uint32_t ;
struct tpc_list {int abort; } ;
struct scsi_copy_operation_abort {int list_identifier; } ;
struct TYPE_2__ {int nexus; } ;
struct ctl_scsiio {TYPE_1__ io_hdr; scalar_t__ cdb; } ;
struct ctl_lun {int lun_lock; } ;


 int CTL_DEBUG_PRINT (char*) ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_RETVAL_COMPLETE ;
 int ctl_done (union ctl_io*) ;
 int ctl_get_initindex (int *) ;
 int ctl_set_invalid_field (struct ctl_scsiio*,int,int,int,int ,int ) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int scsi_4btoul (int ) ;
 struct tpc_list* tpc_find_list (struct ctl_lun*,int ,int ) ;

int
ctl_copy_operation_abort(struct ctl_scsiio *ctsio)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_copy_operation_abort *cdb;
 struct tpc_list *list;
 int retval;
 uint32_t list_id;

 CTL_DEBUG_PRINT(("ctl_copy_operation_abort\n"));

 cdb = (struct scsi_copy_operation_abort *)ctsio->cdb;
 retval = CTL_RETVAL_COMPLETE;

 list_id = scsi_4btoul(cdb->list_identifier);
 mtx_lock(&lun->lun_lock);
 list = tpc_find_list(lun, list_id,
     ctl_get_initindex(&ctsio->io_hdr.nexus));
 if (list == ((void*)0)) {
  mtx_unlock(&lun->lun_lock);
  ctl_set_invalid_field(ctsio, 1,
                  1, 2, 0,
              0);
  ctl_done((union ctl_io *)ctsio);
  return (retval);
 }
 list->abort = 1;
 mtx_unlock(&lun->lun_lock);

 ctl_set_success(ctsio);
 ctl_done((union ctl_io *)ctsio);
 return (retval);
}
