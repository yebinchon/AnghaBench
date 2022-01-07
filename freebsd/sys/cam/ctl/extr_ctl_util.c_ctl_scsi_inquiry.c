
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; void* io_type; } ;
struct ctl_scsiio {int cdb_len; void** ext_data_ptr; int sense_len; scalar_t__ ext_data_filled; scalar_t__ ext_sg_entries; int ext_data_len; int tag_type; scalar_t__ cdb; } ;
union ctl_io {TYPE_1__ io_hdr; struct ctl_scsiio scsiio; } ;
typedef void* uint8_t ;
struct scsi_inquiry {int length; void* control; void* page_code; void* byte2; int opcode; } ;
typedef int int32_t ;
typedef int ctl_tag_type ;


 int CTL_FLAG_DATA_IN ;
 void* CTL_IO_SCSI ;
 int INQUIRY ;
 int SSD_FULL_SIZE ;
 int ctl_scsi_zero_io (union ctl_io*) ;
 int scsi_ulto2b (int ,int ) ;

void
ctl_scsi_inquiry(union ctl_io *io, uint8_t *data_ptr, int32_t data_len,
   uint8_t byte2, uint8_t page_code, ctl_tag_type tag_type,
   uint8_t control)
{
 struct ctl_scsiio *ctsio;
 struct scsi_inquiry *cdb;

 ctl_scsi_zero_io(io);

 io->io_hdr.io_type = CTL_IO_SCSI;
 ctsio = &io->scsiio;
 cdb = (struct scsi_inquiry *)ctsio->cdb;

 cdb->opcode = INQUIRY;
 cdb->byte2 = byte2;
 cdb->page_code = page_code;
 cdb->control = control;
 scsi_ulto2b(data_len, cdb->length);
 io->io_hdr.io_type = CTL_IO_SCSI;
 io->io_hdr.flags = CTL_FLAG_DATA_IN;
 ctsio->tag_type = tag_type;
 ctsio->cdb_len = sizeof(*cdb);
 ctsio->ext_data_len = data_len;
 ctsio->ext_data_ptr = data_ptr;
 ctsio->ext_sg_entries = 0;
 ctsio->ext_data_filled = 0;
 ctsio->sense_len = SSD_FULL_SIZE;
}
