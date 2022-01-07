
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
typedef int uint32_t ;
struct scsi_mechanism_status_header {int state1; int state2; int slots_length; scalar_t__ slots_num; int lba; } ;
struct scsi_mechanism_status {int length; } ;
struct TYPE_2__ {int flags; } ;
struct ctl_scsiio {int be_move_done; TYPE_1__ io_hdr; scalar_t__ kern_data_ptr; int kern_data_len; int kern_total_len; scalar_t__ kern_rel_offset; scalar_t__ kern_sg_entries; scalar_t__ cdb; } ;


 int CTL_FLAG_ALLOCATED ;
 int CTL_RETVAL_COMPLETE ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 scalar_t__ malloc (int,int ,int) ;
 int min (int,int) ;
 int scsi_2btoul (int ) ;
 int scsi_ulto2b (int ,int ) ;
 int scsi_ulto3b (int ,int ) ;

int
ctl_mechanism_status(struct ctl_scsiio *ctsio)
{
 struct scsi_mechanism_status_header *hdr;
 struct scsi_mechanism_status *cdb;
 uint32_t alloc_len, data_len;

 cdb = (struct scsi_mechanism_status *)ctsio->cdb;
 alloc_len = scsi_2btoul(cdb->length);

 data_len = sizeof(struct scsi_mechanism_status_header);
 ctsio->kern_data_ptr = malloc(data_len, M_CTL, M_WAITOK | M_ZERO);
 ctsio->kern_sg_entries = 0;
 ctsio->kern_rel_offset = 0;
 ctsio->kern_data_len = min(data_len, alloc_len);
 ctsio->kern_total_len = ctsio->kern_data_len;

 hdr = (struct scsi_mechanism_status_header *)ctsio->kern_data_ptr;
 hdr->state1 = 0x00;
 hdr->state2 = 0xe0;
 scsi_ulto3b(0, hdr->lba);
 hdr->slots_num = 0;
 scsi_ulto2b(0, hdr->slots_length);

 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (CTL_RETVAL_COMPLETE);
}
