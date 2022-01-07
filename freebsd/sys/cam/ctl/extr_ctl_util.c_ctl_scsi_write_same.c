
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; void* io_type; } ;
struct ctl_scsiio {int cdb_len; void** ext_data_ptr; int sense_len; scalar_t__ ext_data_filled; scalar_t__ ext_sg_entries; int ext_data_len; int tag_type; scalar_t__ cdb; } ;
union ctl_io {TYPE_1__ io_hdr; struct ctl_scsiio scsiio; } ;
typedef void* uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct scsi_write_same_16 {void* control; scalar_t__ group; int length; int addr; void* byte2; int opcode; } ;
typedef int ctl_tag_type ;


 int CTL_FLAG_DATA_OUT ;
 void* CTL_IO_SCSI ;
 int SSD_FULL_SIZE ;
 int WRITE_SAME_16 ;
 int ctl_scsi_zero_io (union ctl_io*) ;
 int scsi_u64to8b (int ,int ) ;
 int scsi_ulto4b (int ,int ) ;

void
ctl_scsi_write_same(union ctl_io *io, uint8_t *data_ptr, uint32_t data_len,
      uint8_t byte2, uint64_t lba, uint32_t num_blocks,
      ctl_tag_type tag_type, uint8_t control)
{
 struct ctl_scsiio *ctsio;
 struct scsi_write_same_16 *cdb;

 ctl_scsi_zero_io(io);

 io->io_hdr.io_type = CTL_IO_SCSI;
 ctsio = &io->scsiio;
 ctsio->cdb_len = sizeof(*cdb);
 cdb = (struct scsi_write_same_16 *)ctsio->cdb;
 cdb->opcode = WRITE_SAME_16;
 cdb->byte2 = byte2;
 scsi_u64to8b(lba, cdb->addr);
 scsi_ulto4b(num_blocks, cdb->length);
 cdb->group = 0;
 cdb->control = control;

 io->io_hdr.io_type = CTL_IO_SCSI;
 io->io_hdr.flags = CTL_FLAG_DATA_OUT;
 ctsio->tag_type = tag_type;
 ctsio->ext_data_ptr = data_ptr;
 ctsio->ext_data_len = data_len;
 ctsio->ext_sg_entries = 0;
 ctsio->ext_data_filled = 0;
 ctsio->sense_len = SSD_FULL_SIZE;
}
