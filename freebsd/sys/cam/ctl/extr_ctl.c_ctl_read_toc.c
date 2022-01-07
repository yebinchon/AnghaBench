
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
typedef int uint32_t ;
struct scsi_read_toc_type01_descr {int addr_ctl; int track_number; int track_start; } ;
struct scsi_read_toc_hdr {int first; int last; int data_length; } ;
struct scsi_read_toc {int byte2; int format; int data_len; } ;
struct TYPE_4__ {int flags; } ;
struct ctl_scsiio {int be_move_done; TYPE_2__ io_hdr; scalar_t__ kern_data_ptr; int kern_data_len; int kern_total_len; scalar_t__ kern_rel_offset; scalar_t__ kern_sg_entries; scalar_t__ cdb; } ;
struct ctl_lun {TYPE_1__* be_lun; } ;
struct TYPE_3__ {scalar_t__ maxlba; } ;


 int CD_MSF ;
 int CTL_FLAG_ALLOCATED ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_RETVAL_COMPLETE ;
 int M_CTL ;
 int M_WAITOK ;
 int M_ZERO ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 int ctl_ultomsf (scalar_t__,int ) ;
 scalar_t__ malloc (int,int ,int) ;
 int min (int,int) ;
 int scsi_2btoul (int ) ;
 int scsi_ulto2b (int,int ) ;
 int scsi_ulto4b (scalar_t__,int ) ;

int
ctl_read_toc(struct ctl_scsiio *ctsio)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 struct scsi_read_toc_hdr *hdr;
 struct scsi_read_toc_type01_descr *descr;
 struct scsi_read_toc *cdb;
 uint32_t alloc_len, data_len;
 int format, msf;

 cdb = (struct scsi_read_toc *)ctsio->cdb;
 msf = (cdb->byte2 & CD_MSF) != 0;
 format = cdb->format;
 alloc_len = scsi_2btoul(cdb->data_len);

 data_len = sizeof(struct scsi_read_toc_hdr);
 if (format == 0)
  data_len += 2 * sizeof(struct scsi_read_toc_type01_descr);
 else
  data_len += sizeof(struct scsi_read_toc_type01_descr);
 ctsio->kern_data_ptr = malloc(data_len, M_CTL, M_WAITOK | M_ZERO);
 ctsio->kern_sg_entries = 0;
 ctsio->kern_rel_offset = 0;
 ctsio->kern_data_len = min(data_len, alloc_len);
 ctsio->kern_total_len = ctsio->kern_data_len;

 hdr = (struct scsi_read_toc_hdr *)ctsio->kern_data_ptr;
 if (format == 0) {
  scsi_ulto2b(0x12, hdr->data_length);
  hdr->first = 1;
  hdr->last = 1;
  descr = (struct scsi_read_toc_type01_descr *)(hdr + 1);
  descr->addr_ctl = 0x14;
  descr->track_number = 1;
  if (msf)
   ctl_ultomsf(0, descr->track_start);
  else
   scsi_ulto4b(0, descr->track_start);
  descr++;
  descr->addr_ctl = 0x14;
  descr->track_number = 0xaa;
  if (msf)
   ctl_ultomsf(lun->be_lun->maxlba+1, descr->track_start);
  else
   scsi_ulto4b(lun->be_lun->maxlba+1, descr->track_start);
 } else {
  scsi_ulto2b(0x0a, hdr->data_length);
  hdr->first = 1;
  hdr->last = 1;
  descr = (struct scsi_read_toc_type01_descr *)(hdr + 1);
  descr->addr_ctl = 0x14;
  descr->track_number = 1;
  if (msf)
   ctl_ultomsf(0, descr->track_start);
  else
   scsi_ulto4b(0, descr->track_start);
 }

 ctl_set_success(ctsio);
 ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (CTL_RETVAL_COMPLETE);
}
