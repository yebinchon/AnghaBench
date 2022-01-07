
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct scsi_sync_cache_16 {int byte2; int lb_count; int begin_lba; } ;
struct scsi_sync_cache {int byte2; int lb_count; int begin_lba; } ;
struct TYPE_5__ {int * ctl_private; } ;
struct ctl_scsiio {int* cdb; TYPE_2__ io_hdr; } ;
struct ctl_lun {TYPE_3__* backend; TYPE_1__* be_lun; } ;
struct ctl_lba_len_flags {int flags; scalar_t__ len; scalar_t__ lba; } ;
struct TYPE_6__ {int (* config_write ) (union ctl_io*) ;} ;
struct TYPE_4__ {scalar_t__ maxlba; } ;


 int CTL_DEBUG_PRINT (char*) ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 size_t CTL_PRIV_LBA_LEN ;
 int MAX (scalar_t__,scalar_t__) ;


 int ctl_done (union ctl_io*) ;
 int ctl_set_invalid_opcode (struct ctl_scsiio*) ;
 int ctl_set_lba_out_of_range (struct ctl_scsiio*,int ) ;
 scalar_t__ scsi_2btoul (int ) ;
 scalar_t__ scsi_4btoul (int ) ;
 scalar_t__ scsi_8btou64 (int ) ;
 int stub1 (union ctl_io*) ;

int
ctl_sync_cache(struct ctl_scsiio *ctsio)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct ctl_lba_len_flags *lbalen;
 uint64_t starting_lba;
 uint32_t block_count;
 int retval;
 uint8_t byte2;

 CTL_DEBUG_PRINT(("ctl_sync_cache\n"));

 retval = 0;

 switch (ctsio->cdb[0]) {
 case 129: {
  struct scsi_sync_cache *cdb;
  cdb = (struct scsi_sync_cache *)ctsio->cdb;

  starting_lba = scsi_4btoul(cdb->begin_lba);
  block_count = scsi_2btoul(cdb->lb_count);
  byte2 = cdb->byte2;
  break;
 }
 case 128: {
  struct scsi_sync_cache_16 *cdb;
  cdb = (struct scsi_sync_cache_16 *)ctsio->cdb;

  starting_lba = scsi_8btou64(cdb->begin_lba);
  block_count = scsi_4btoul(cdb->lb_count);
  byte2 = cdb->byte2;
  break;
 }
 default:
  ctl_set_invalid_opcode(ctsio);
  ctl_done((union ctl_io *)ctsio);
  goto bailout;
  break;
 }







 if ((starting_lba + block_count) > (lun->be_lun->maxlba + 1)) {
  ctl_set_lba_out_of_range(ctsio,
      MAX(starting_lba, lun->be_lun->maxlba + 1));
  ctl_done((union ctl_io *)ctsio);
  goto bailout;
 }

 lbalen = (struct ctl_lba_len_flags *)&ctsio->io_hdr.ctl_private[CTL_PRIV_LBA_LEN];
 lbalen->lba = starting_lba;
 lbalen->len = block_count;
 lbalen->flags = byte2;
 retval = lun->backend->config_write((union ctl_io *)ctsio);

bailout:
 return (retval);
}
