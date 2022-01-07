
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sense_len; scalar_t__ ext_data_filled; scalar_t__ ext_sg_entries; int ext_data_len; int * ext_data_ptr; int tag_type; scalar_t__ cdb; } ;
struct TYPE_3__ {int flags; void* io_type; } ;
union ctl_io {TYPE_2__ scsiio; TYPE_1__ io_hdr; } ;
typedef int uint8_t ;
typedef int uint32_t ;
struct scsi_read_capacity {int control; int addr; int pmi; int byte2; int opcode; } ;
typedef int ctl_tag_type ;


 int CTL_FLAG_DATA_IN ;
 void* CTL_IO_SCSI ;
 int READ_CAPACITY ;
 int SRC_PMI ;
 int SRC_RELADR ;
 int SSD_FULL_SIZE ;
 int ctl_scsi_zero_io (union ctl_io*) ;
 int scsi_ulto4b (int ,int ) ;

void
ctl_scsi_read_capacity(union ctl_io *io, uint8_t *data_ptr, uint32_t data_len,
         uint32_t addr, int reladr, int pmi,
         ctl_tag_type tag_type, uint8_t control)
{
 struct scsi_read_capacity *cdb;

 ctl_scsi_zero_io(io);

 io->io_hdr.io_type = CTL_IO_SCSI;
 cdb = (struct scsi_read_capacity *)io->scsiio.cdb;

 cdb->opcode = READ_CAPACITY;
 if (reladr)
  cdb->byte2 = SRC_RELADR;
 if (pmi)
  cdb->pmi = SRC_PMI;
 scsi_ulto4b(addr, cdb->addr);
 cdb->control = control;
 io->io_hdr.io_type = CTL_IO_SCSI;
 io->io_hdr.flags = CTL_FLAG_DATA_IN;
 io->scsiio.tag_type = tag_type;
 io->scsiio.ext_data_ptr = data_ptr;
 io->scsiio.ext_data_len = data_len;
 io->scsiio.ext_sg_entries = 0;
 io->scsiio.ext_data_filled = 0;
 io->scsiio.sense_len = SSD_FULL_SIZE;
}
