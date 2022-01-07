
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; void* io_type; } ;
struct ctl_scsiio {int cdb_len; void** ext_data_ptr; int sense_len; scalar_t__ ext_data_filled; scalar_t__ ext_sg_entries; int ext_data_len; int tag_type; scalar_t__ cdb; } ;
union ctl_io {TYPE_1__ io_hdr; struct ctl_scsiio scsiio; } ;
typedef void* uint8_t ;
typedef int uint32_t ;
struct scsi_report_luns {void* control; int length; void* select_report; int opcode; } ;
typedef int ctl_tag_type ;


 int CTL_FLAG_DATA_IN ;
 void* CTL_IO_SCSI ;
 int REPORT_LUNS ;
 int SSD_FULL_SIZE ;
 int ctl_scsi_zero_io (union ctl_io*) ;
 int scsi_ulto4b (int ,int ) ;

void
ctl_scsi_report_luns(union ctl_io *io, uint8_t *data_ptr, uint32_t data_len,
       uint8_t select_report, ctl_tag_type tag_type,
       uint8_t control)
{
 struct ctl_scsiio *ctsio;
 struct scsi_report_luns *cdb;

 ctl_scsi_zero_io(io);

 io->io_hdr.io_type = CTL_IO_SCSI;
 ctsio = &io->scsiio;
 cdb = (struct scsi_report_luns *)ctsio->cdb;

 cdb->opcode = REPORT_LUNS;
 cdb->select_report = select_report;
 scsi_ulto4b(data_len, cdb->length);
 cdb->control = control;
 io->io_hdr.io_type = CTL_IO_SCSI;
 io->io_hdr.flags = CTL_FLAG_DATA_IN;
 ctsio->tag_type = tag_type;
 ctsio->cdb_len = sizeof(*cdb);
 ctsio->ext_data_ptr = data_ptr;
 ctsio->ext_data_len = data_len;
 ctsio->ext_sg_entries = 0;
 ctsio->ext_data_filled = 0;
 ctsio->sense_len = SSD_FULL_SIZE;
}
