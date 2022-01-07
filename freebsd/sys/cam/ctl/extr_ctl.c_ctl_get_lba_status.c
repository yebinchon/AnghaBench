
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
typedef scalar_t__ uint64_t ;
typedef int uint32_t ;
struct scsi_get_lba_status_data {TYPE_2__* descr; int length; } ;
struct scsi_get_lba_status {int alloc_len; int addr; } ;
struct TYPE_7__ {int * ctl_private; int flags; } ;
struct ctl_scsiio {TYPE_3__ io_hdr; int be_move_done; int kern_data_len; int kern_total_len; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; scalar_t__ kern_data_ptr; scalar_t__ cdb; } ;
struct ctl_lun {TYPE_4__* backend; TYPE_1__* be_lun; } ;
struct ctl_lba_len_flags {int len; scalar_t__ flags; scalar_t__ lba; } ;
struct TYPE_8__ {int (* config_read ) (union ctl_io*) ;} ;
struct TYPE_6__ {scalar_t__ status; int length; int addr; } ;
struct TYPE_5__ {scalar_t__ maxlba; } ;


 int CTL_DEBUG_PRINT (char*) ;
 int CTL_FLAG_ALLOCATED ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 size_t CTL_PRIV_LBA_LEN ;
 int CTL_RETVAL_COMPLETE ;
 int MIN (int ,scalar_t__) ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int UINT32_MAX ;
 int ctl_config_move_done ;
 int ctl_done (union ctl_io*) ;
 int ctl_set_lba_out_of_range (struct ctl_scsiio*,scalar_t__) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 scalar_t__ malloc (int,int ,int) ;
 int min (int,int) ;
 int scsi_4btoul (int ) ;
 scalar_t__ scsi_8btou64 (int ) ;
 int scsi_u64to8b (scalar_t__,int ) ;
 int scsi_ulto4b (int,int ) ;
 int stub1 (union ctl_io*) ;

int
ctl_get_lba_status(struct ctl_scsiio *ctsio)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_get_lba_status *cdb;
 struct scsi_get_lba_status_data *data;
 struct ctl_lba_len_flags *lbalen;
 uint64_t lba;
 uint32_t alloc_len, total_len;
 int retval;

 CTL_DEBUG_PRINT(("ctl_get_lba_status\n"));

 cdb = (struct scsi_get_lba_status *)ctsio->cdb;
 lba = scsi_8btou64(cdb->addr);
 alloc_len = scsi_4btoul(cdb->alloc_len);

 if (lba > lun->be_lun->maxlba) {
  ctl_set_lba_out_of_range(ctsio, lba);
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 }

 total_len = sizeof(*data) + sizeof(data->descr[0]);
 ctsio->kern_data_ptr = malloc(total_len, M_CTL, M_WAITOK | M_ZERO);
 data = (struct scsi_get_lba_status_data *)ctsio->kern_data_ptr;
 ctsio->kern_rel_offset = 0;
 ctsio->kern_sg_entries = 0;
 ctsio->kern_data_len = min(total_len, alloc_len);
 ctsio->kern_total_len = ctsio->kern_data_len;


 scsi_ulto4b(4 + sizeof(data->descr[0]), data->length);
 scsi_u64to8b(lba, data->descr[0].addr);
 scsi_ulto4b(MIN(UINT32_MAX, lun->be_lun->maxlba + 1 - lba),
     data->descr[0].length);
 data->descr[0].status = 0;

 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;

 lbalen = (struct ctl_lba_len_flags *)&ctsio->io_hdr.ctl_private[CTL_PRIV_LBA_LEN];
 lbalen->lba = lba;
 lbalen->len = total_len;
 lbalen->flags = 0;
 retval = lun->backend->config_read((union ctl_io *)ctsio);
 return (retval);
}
