
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; int io_type; } ;
struct ctl_scsiio {int cdb_len; int sense_len; scalar_t__ ext_data_filled; scalar_t__ ext_sg_entries; int * ext_data_ptr; scalar_t__ ext_data_len; int tag_type; scalar_t__ cdb; } ;
union ctl_io {TYPE_1__ io_hdr; struct ctl_scsiio scsiio; } ;
typedef int uint8_t ;
struct scsi_test_unit_ready {int control; int opcode; } ;
typedef int ctl_tag_type ;


 int CTL_FLAG_DATA_NONE ;
 int CTL_IO_SCSI ;
 int SSD_FULL_SIZE ;
 int TEST_UNIT_READY ;
 int ctl_scsi_zero_io (union ctl_io*) ;

void
ctl_scsi_tur(union ctl_io *io, ctl_tag_type tag_type, uint8_t control)
{
 struct ctl_scsiio *ctsio;
 struct scsi_test_unit_ready *cdb;

 ctl_scsi_zero_io(io);

 io->io_hdr.io_type = CTL_IO_SCSI;
 ctsio = &io->scsiio;
 cdb = (struct scsi_test_unit_ready *)ctsio->cdb;

 cdb->opcode = TEST_UNIT_READY;
 cdb->control = control;
 io->io_hdr.flags = CTL_FLAG_DATA_NONE;
 ctsio->tag_type = tag_type;
 ctsio->cdb_len = sizeof(*cdb);
 ctsio->ext_data_len = 0;
 ctsio->ext_data_ptr = ((void*)0);
 ctsio->ext_sg_entries = 0;
 ctsio->ext_data_filled = 0;
 ctsio->sense_len = SSD_FULL_SIZE;
}
