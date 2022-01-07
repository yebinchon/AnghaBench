
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
struct scsi_compare_and_write {int byte2; int length; int addr; } ;
struct TYPE_7__ {int * ctl_private; int flags; } ;
struct ctl_scsiio {int* cdb; int kern_total_len; TYPE_3__ io_hdr; int io_cont; scalar_t__ kern_rel_offset; } ;
struct TYPE_5__ {int flags1; } ;
struct ctl_lun {TYPE_4__* backend; TYPE_2__* be_lun; TYPE_1__ MODE_CACHING; } ;
struct ctl_lba_len_flags {int len; int flags; scalar_t__ lba; } ;
struct TYPE_8__ {int (* data_submit ) (union ctl_io*) ;} ;
struct TYPE_6__ {scalar_t__ maxlba; int blocksize; } ;



 int CTL_DEBUG_PRINT (char*) ;
 int CTL_FLAG_IO_CONT ;
 int CTL_LLF_COMPARE ;
 int CTL_LLF_DPO ;
 int CTL_LLF_FUA ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 size_t CTL_PRIV_LBA_LEN ;
 int CTL_RETVAL_COMPLETE ;
 int MAX (scalar_t__,scalar_t__) ;
 int SCP_WCE ;
 int SRW10_DPO ;
 int SRW10_FUA ;
 int ctl_cnw_cont ;
 int ctl_done (union ctl_io*) ;
 int ctl_set_invalid_opcode (struct ctl_scsiio*) ;
 int ctl_set_lba_out_of_range (struct ctl_scsiio*,int ) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 scalar_t__ scsi_8btou64 (int ) ;
 int stub1 (union ctl_io*) ;

int
ctl_cnw(struct ctl_scsiio *ctsio)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct ctl_lba_len_flags *lbalen;
 uint64_t lba;
 uint32_t num_blocks;
 int flags, retval;

 CTL_DEBUG_PRINT(("ctl_cnw: command: %#x\n", ctsio->cdb[0]));

 flags = 0;
 switch (ctsio->cdb[0]) {
 case 128: {
  struct scsi_compare_and_write *cdb;

  cdb = (struct scsi_compare_and_write *)ctsio->cdb;
  if (cdb->byte2 & SRW10_FUA)
   flags |= CTL_LLF_FUA;
  if (cdb->byte2 & SRW10_DPO)
   flags |= CTL_LLF_DPO;
  lba = scsi_8btou64(cdb->addr);
  num_blocks = cdb->length;
  break;
 }
 default:




  ctl_set_invalid_opcode(ctsio);
  ctl_done((union ctl_io *)ctsio);

  return (CTL_RETVAL_COMPLETE);
  break;
 }







 if (((lba + num_blocks) > (lun->be_lun->maxlba + 1))
  || ((lba + num_blocks) < lba)) {
  ctl_set_lba_out_of_range(ctsio,
      MAX(lba, lun->be_lun->maxlba + 1));
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 }




 if (num_blocks == 0) {
  ctl_set_success(ctsio);
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 }


 if ((lun->MODE_CACHING.flags1 & SCP_WCE) == 0)
  flags |= CTL_LLF_FUA;

 ctsio->kern_total_len = 2 * num_blocks * lun->be_lun->blocksize;
 ctsio->kern_rel_offset = 0;






 ctsio->io_hdr.flags |= CTL_FLAG_IO_CONT;
 ctsio->io_cont = ctl_cnw_cont;

 lbalen = (struct ctl_lba_len_flags *)
     &ctsio->io_hdr.ctl_private[CTL_PRIV_LBA_LEN];
 lbalen->lba = lba;
 lbalen->len = num_blocks;
 lbalen->flags = CTL_LLF_COMPARE | flags;

 CTL_DEBUG_PRINT(("ctl_cnw: calling data_submit()\n"));
 retval = lun->backend->data_submit((union ctl_io *)ctsio);
 return (retval);
}
