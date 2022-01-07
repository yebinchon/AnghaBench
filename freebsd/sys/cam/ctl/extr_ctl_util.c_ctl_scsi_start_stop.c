
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sense_len; scalar_t__ ext_data_filled; scalar_t__ ext_sg_entries; scalar_t__ ext_data_len; int * ext_data_ptr; int tag_type; scalar_t__ cdb; } ;
struct TYPE_3__ {int flags; int io_type; } ;
union ctl_io {TYPE_2__ scsiio; TYPE_1__ io_hdr; } ;
typedef int uint8_t ;
struct scsi_start_stop_unit {int how; int control; int byte2; int opcode; } ;
typedef int ctl_tag_type ;


 int CTL_FLAG_DATA_NONE ;
 int CTL_IO_SCSI ;
 int SSD_FULL_SIZE ;
 int SSS_IMMED ;
 int SSS_LOEJ ;
 int SSS_START ;
 int START_STOP_UNIT ;
 int ctl_scsi_zero_io (union ctl_io*) ;

void
ctl_scsi_start_stop(union ctl_io *io, int start, int load_eject, int immediate,
    int power_conditions, ctl_tag_type tag_type, uint8_t control)
{
 struct scsi_start_stop_unit *cdb;

 cdb = (struct scsi_start_stop_unit *)io->scsiio.cdb;

 ctl_scsi_zero_io(io);

 cdb->opcode = START_STOP_UNIT;
 if (immediate)
  cdb->byte2 |= SSS_IMMED;
 cdb->how = power_conditions;
 if (load_eject)
  cdb->how |= SSS_LOEJ;
 if (start)
  cdb->how |= SSS_START;
 cdb->control = control;
 io->io_hdr.io_type = CTL_IO_SCSI;
 io->io_hdr.flags = CTL_FLAG_DATA_NONE;
 io->scsiio.tag_type = tag_type;
 io->scsiio.ext_data_ptr = ((void*)0);
 io->scsiio.ext_data_len = 0;
 io->scsiio.ext_sg_entries = 0;
 io->scsiio.ext_data_filled = 0;
 io->scsiio.sense_len = SSD_FULL_SIZE;
}
