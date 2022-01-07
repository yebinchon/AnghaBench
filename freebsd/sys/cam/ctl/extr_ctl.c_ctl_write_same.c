
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
typedef int uint32_t ;
struct scsi_write_same_16 {int byte2; int length; int addr; } ;
struct scsi_write_same_10 {int byte2; int length; int addr; } ;
struct TYPE_5__ {int flags; int * ctl_private; } ;
struct ctl_scsiio {int* cdb; int kern_data_len; int kern_total_len; TYPE_2__ io_hdr; int be_move_done; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; int kern_data_ptr; int io_cont; } ;
struct ctl_lun {TYPE_3__* backend; TYPE_1__* be_lun; } ;
struct ctl_lba_len_flags {int len; int flags; scalar_t__ lba; } ;
struct TYPE_6__ {int (* config_write ) (union ctl_io*) ;} ;
struct TYPE_4__ {scalar_t__ maxlba; int blocksize; int options; } ;


 int CTL_DEBUG_PRINT (char*) ;
 int CTL_FLAG_ALLOCATED ;
 int CTL_FLAG_IO_CONT ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 size_t CTL_PRIV_LBA_LEN ;
 int CTL_RETVAL_COMPLETE ;
 int MAX (scalar_t__,scalar_t__) ;
 int M_CTL ;
 int M_WAITOK ;
 int SWS_ANCHOR ;
 int SWS_NDOB ;
 int SWS_UNMAP ;
 scalar_t__ UINT32_MAX ;
 scalar_t__ UINT64_MAX ;


 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_done (union ctl_io*) ;
 int ctl_expand_number (char const*,scalar_t__*) ;
 int ctl_set_invalid_field (struct ctl_scsiio*,int,int,int,int,int ) ;
 int ctl_set_invalid_opcode (struct ctl_scsiio*) ;
 int ctl_set_lba_out_of_range (struct ctl_scsiio*,int ) ;
 int ctl_write_same_cont ;
 char* dnvlist_get_string (int ,char*,int *) ;
 int malloc (int,int ,int ) ;
 int scsi_2btoul (int ) ;
 void* scsi_4btoul (int ) ;
 scalar_t__ scsi_8btou64 (int ) ;
 int stub1 (union ctl_io*) ;

int
ctl_write_same(struct ctl_scsiio *ctsio)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct ctl_lba_len_flags *lbalen;
 const char *val;
 uint64_t lba, ival;
 uint32_t num_blocks;
 int len, retval;
 uint8_t byte2;

 CTL_DEBUG_PRINT(("ctl_write_same\n"));

 switch (ctsio->cdb[0]) {
 case 129: {
  struct scsi_write_same_10 *cdb;

  cdb = (struct scsi_write_same_10 *)ctsio->cdb;

  lba = scsi_4btoul(cdb->addr);
  num_blocks = scsi_2btoul(cdb->length);
  byte2 = cdb->byte2;
  break;
 }
 case 128: {
  struct scsi_write_same_16 *cdb;

  cdb = (struct scsi_write_same_16 *)ctsio->cdb;

  lba = scsi_8btou64(cdb->addr);
  num_blocks = scsi_4btoul(cdb->length);
  byte2 = cdb->byte2;
  break;
 }
 default:




  ctl_set_invalid_opcode(ctsio);
  ctl_done((union ctl_io *)ctsio);

  return (CTL_RETVAL_COMPLETE);
  break;
 }


 if ((byte2 & SWS_UNMAP) == 0 && (byte2 & SWS_ANCHOR) != 0) {
  ctl_set_invalid_field(ctsio, 1,
                  1, 1, 1, 0);
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 }







 if (((lba + num_blocks) > (lun->be_lun->maxlba + 1))
  || ((lba + num_blocks) < lba)) {
  ctl_set_lba_out_of_range(ctsio,
      MAX(lba, lun->be_lun->maxlba + 1));
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 }


 if (num_blocks == 0) {
  ival = UINT64_MAX;
  val = dnvlist_get_string(lun->be_lun->options,
      "write_same_max_lba", ((void*)0));
  if (val != ((void*)0))
   ctl_expand_number(val, &ival);
  if ((lun->be_lun->maxlba + 1) - lba > ival) {
   ctl_set_invalid_field(ctsio,
                     1, 1,
                 ctsio->cdb[0] == 129 ? 7 : 10,
                     0, 0);
   ctl_done((union ctl_io *)ctsio);
   return (CTL_RETVAL_COMPLETE);
  }
  if ((lun->be_lun->maxlba + 1) - lba > UINT32_MAX) {
   ctsio->io_hdr.flags |= CTL_FLAG_IO_CONT;
   ctsio->io_cont = ctl_write_same_cont;
   num_blocks = 1 << 31;
  } else
   num_blocks = (lun->be_lun->maxlba + 1) - lba;
 }

 len = lun->be_lun->blocksize;





 if ((byte2 & SWS_NDOB) == 0 &&
     (ctsio->io_hdr.flags & CTL_FLAG_ALLOCATED) == 0) {
  ctsio->kern_data_ptr = malloc(len, M_CTL, M_WAITOK);
  ctsio->kern_data_len = len;
  ctsio->kern_total_len = len;
  ctsio->kern_rel_offset = 0;
  ctsio->kern_sg_entries = 0;
  ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
  ctsio->be_move_done = ctl_config_move_done;
  ctl_datamove((union ctl_io *)ctsio);

  return (CTL_RETVAL_COMPLETE);
 }

 lbalen = (struct ctl_lba_len_flags *)&ctsio->io_hdr.ctl_private[CTL_PRIV_LBA_LEN];
 lbalen->lba = lba;
 lbalen->len = num_blocks;
 lbalen->flags = byte2;
 retval = lun->backend->config_write((union ctl_io *)ctsio);

 return (retval);
}
