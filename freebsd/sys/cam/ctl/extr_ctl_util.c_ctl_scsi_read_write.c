
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; void* io_type; } ;
struct ctl_scsiio {int cdb_len; scalar_t__* ext_data_ptr; int ext_data_len; int sense_len; scalar_t__ ext_data_filled; scalar_t__ ext_sg_entries; int tag_type; scalar_t__ cdb; } ;
union ctl_io {TYPE_1__ io_hdr; struct ctl_scsiio scsiio; } ;
typedef scalar_t__ uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct scsi_rw_6 {int length; scalar_t__ control; int addr; int opcode; } ;
struct scsi_rw_16 {scalar_t__ control; scalar_t__ reserved; int length; int addr; scalar_t__ byte2; int opcode; } ;
struct scsi_rw_12 {scalar_t__ control; scalar_t__ reserved; int length; int addr; scalar_t__ byte2; int opcode; } ;
struct scsi_rw_10 {scalar_t__ control; int length; scalar_t__ reserved; int addr; scalar_t__ byte2; int opcode; } ;
typedef int ctl_tag_type ;


 int CTL_FLAG_DATA_IN ;
 int CTL_FLAG_DATA_OUT ;
 void* CTL_IO_SCSI ;
 int READ_10 ;
 int READ_12 ;
 int READ_16 ;
 int READ_6 ;
 int SSD_FULL_SIZE ;
 int WRITE_10 ;
 int WRITE_12 ;
 int WRITE_16 ;
 int WRITE_6 ;
 int ctl_scsi_zero_io (union ctl_io*) ;
 int scsi_u64to8b (int,int ) ;
 int scsi_ulto2b (int,int ) ;
 int scsi_ulto3b (int,int ) ;
 int scsi_ulto4b (int,int ) ;

void
ctl_scsi_read_write(union ctl_io *io, uint8_t *data_ptr, uint32_t data_len,
      int read_op, uint8_t byte2, int minimum_cdb_size,
      uint64_t lba, uint32_t num_blocks, ctl_tag_type tag_type,
      uint8_t control)
{
 struct ctl_scsiio *ctsio;

 ctl_scsi_zero_io(io);

 io->io_hdr.io_type = CTL_IO_SCSI;
 ctsio = &io->scsiio;
 if ((minimum_cdb_size < 10)
  && ((lba & 0x1fffff) == lba)
  && ((num_blocks & 0xff) == num_blocks)
  && (byte2 == 0)) {
  struct scsi_rw_6 *cdb;
  cdb = (struct scsi_rw_6 *)ctsio->cdb;

  cdb->opcode = (read_op) ? READ_6 : WRITE_6;
  scsi_ulto3b(lba, cdb->addr);
  cdb->length = num_blocks & 0xff;
  cdb->control = control;

  ctsio->cdb_len = sizeof(*cdb);

 } else if ((minimum_cdb_size < 12)
  && ((num_blocks & 0xffff) == num_blocks)
  && ((lba & 0xffffffff) == lba)) {
  struct scsi_rw_10 *cdb;

  cdb = (struct scsi_rw_10 *)ctsio->cdb;

  cdb->opcode = (read_op) ? READ_10 : WRITE_10;
  cdb->byte2 = byte2;
  scsi_ulto4b(lba, cdb->addr);
  cdb->reserved = 0;
  scsi_ulto2b(num_blocks, cdb->length);
  cdb->control = control;

  ctsio->cdb_len = sizeof(*cdb);
 } else if ((minimum_cdb_size < 16)
  && ((num_blocks & 0xffffffff) == num_blocks)
  && ((lba & 0xffffffff) == lba)) {
  struct scsi_rw_12 *cdb;

  cdb = (struct scsi_rw_12 *)ctsio->cdb;

  cdb->opcode = (read_op) ? READ_12 : WRITE_12;
  cdb->byte2 = byte2;
  scsi_ulto4b(lba, cdb->addr);
  scsi_ulto4b(num_blocks, cdb->length);
  cdb->reserved = 0;
  cdb->control = control;

  ctsio->cdb_len = sizeof(*cdb);
 } else {
  struct scsi_rw_16 *cdb;

  cdb = (struct scsi_rw_16 *)ctsio->cdb;

  cdb->opcode = (read_op) ? READ_16 : WRITE_16;
  cdb->byte2 = byte2;
  scsi_u64to8b(lba, cdb->addr);
  scsi_ulto4b(num_blocks, cdb->length);
  cdb->reserved = 0;
  cdb->control = control;

  ctsio->cdb_len = sizeof(*cdb);
 }

 io->io_hdr.io_type = CTL_IO_SCSI;
 if (read_op != 0)
  io->io_hdr.flags = CTL_FLAG_DATA_IN;
 else
  io->io_hdr.flags = CTL_FLAG_DATA_OUT;
 ctsio->tag_type = tag_type;
 ctsio->ext_data_ptr = data_ptr;
 ctsio->ext_data_len = data_len;
 ctsio->ext_sg_entries = 0;
 ctsio->ext_data_filled = 0;
 ctsio->sense_len = SSD_FULL_SIZE;
}
