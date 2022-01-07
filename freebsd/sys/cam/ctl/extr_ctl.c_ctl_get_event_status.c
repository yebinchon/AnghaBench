
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
typedef int uint32_t ;
struct scsi_get_event_status_header {scalar_t__ supported_class; int nea_class; int descr_length; } ;
struct scsi_get_event_status {int byte2; int length; } ;
struct TYPE_2__ {int flags; } ;
struct ctl_scsiio {int be_move_done; TYPE_1__ io_hdr; scalar_t__ kern_data_ptr; int kern_data_len; int kern_total_len; scalar_t__ kern_rel_offset; scalar_t__ kern_sg_entries; scalar_t__ cdb; } ;


 int CTL_FLAG_ALLOCATED ;
 int CTL_RETVAL_COMPLETE ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int SGESN_NEA ;
 int SGESN_POLLED ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_done (union ctl_io*) ;
 int ctl_set_invalid_field (struct ctl_scsiio*,int,int,int,int,int ) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 scalar_t__ malloc (int,int ,int) ;
 int min (int,int) ;
 int scsi_2btoul (int ) ;
 int scsi_ulto2b (int ,int ) ;

int
ctl_get_event_status(struct ctl_scsiio *ctsio)
{
 struct scsi_get_event_status_header *hdr;
 struct scsi_get_event_status *cdb;
 uint32_t alloc_len, data_len;

 cdb = (struct scsi_get_event_status *)ctsio->cdb;
 if ((cdb->byte2 & SGESN_POLLED) == 0) {
  ctl_set_invalid_field(ctsio, 1, 1,
                1, 1, 0);
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 }
 alloc_len = scsi_2btoul(cdb->length);

 data_len = sizeof(struct scsi_get_event_status_header);
 ctsio->kern_data_ptr = malloc(data_len, M_CTL, M_WAITOK | M_ZERO);
 ctsio->kern_sg_entries = 0;
 ctsio->kern_rel_offset = 0;
 ctsio->kern_data_len = min(data_len, alloc_len);
 ctsio->kern_total_len = ctsio->kern_data_len;

 hdr = (struct scsi_get_event_status_header *)ctsio->kern_data_ptr;
 scsi_ulto2b(0, hdr->descr_length);
 hdr->nea_class = SGESN_NEA;
 hdr->supported_class = 0;

 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (CTL_RETVAL_COMPLETE);
}
