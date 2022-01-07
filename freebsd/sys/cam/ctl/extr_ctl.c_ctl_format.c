
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ctl_io {int dummy; } ctl_io ;
struct scsi_format_header_short {int defect_list_len; } ;
struct scsi_format_header_long {int defect_list_len; } ;
struct scsi_format {int byte2; } ;
struct TYPE_2__ {int flags; } ;
struct ctl_scsiio {int kern_data_len; int kern_total_len; TYPE_1__ io_hdr; scalar_t__ kern_data_ptr; int be_move_done; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; scalar_t__ cdb; } ;


 int CTL_DEBUG_PRINT (char*) ;
 int CTL_FLAG_ALLOCATED ;
 int CTL_RETVAL_COMPLETE ;
 int M_CTL ;
 int M_WAITOK ;
 int SF_FMTDATA ;
 int SF_LONGLIST ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_done (union ctl_io*) ;
 int ctl_set_invalid_field (struct ctl_scsiio*,int,int ,int,int ,int ) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 int free (scalar_t__,int ) ;
 scalar_t__ malloc (int,int ,int ) ;
 int scsi_2btoul (int ) ;
 int scsi_4btoul (int ) ;

int
ctl_format(struct ctl_scsiio *ctsio)
{
 struct scsi_format *cdb;
 int length, defect_list_len;

 CTL_DEBUG_PRINT(("ctl_format\n"));

 cdb = (struct scsi_format *)ctsio->cdb;

 length = 0;
 if (cdb->byte2 & SF_FMTDATA) {
  if (cdb->byte2 & SF_LONGLIST)
   length = sizeof(struct scsi_format_header_long);
  else
   length = sizeof(struct scsi_format_header_short);
 }

 if (((ctsio->io_hdr.flags & CTL_FLAG_ALLOCATED) == 0)
  && (length > 0)) {
  ctsio->kern_data_ptr = malloc(length, M_CTL, M_WAITOK);
  ctsio->kern_data_len = length;
  ctsio->kern_total_len = length;
  ctsio->kern_rel_offset = 0;
  ctsio->kern_sg_entries = 0;
  ctsio->io_hdr.flags |= CTL_FLAG_ALLOCATED;
  ctsio->be_move_done = ctl_config_move_done;
  ctl_datamove((union ctl_io *)ctsio);

  return (CTL_RETVAL_COMPLETE);
 }

 defect_list_len = 0;

 if (cdb->byte2 & SF_FMTDATA) {
  if (cdb->byte2 & SF_LONGLIST) {
   struct scsi_format_header_long *header;

   header = (struct scsi_format_header_long *)
    ctsio->kern_data_ptr;

   defect_list_len = scsi_4btoul(header->defect_list_len);
   if (defect_list_len != 0) {
    ctl_set_invalid_field(ctsio,
                          1,
                        0,
                      2,
                          0,
                    0);
    goto bailout;
   }
  } else {
   struct scsi_format_header_short *header;

   header = (struct scsi_format_header_short *)
    ctsio->kern_data_ptr;

   defect_list_len = scsi_2btoul(header->defect_list_len);
   if (defect_list_len != 0) {
    ctl_set_invalid_field(ctsio,
                          1,
                        0,
                      2,
                          0,
                    0);
    goto bailout;
   }
  }
 }

 ctl_set_success(ctsio);
bailout:

 if (ctsio->io_hdr.flags & CTL_FLAG_ALLOCATED) {
  free(ctsio->kern_data_ptr, M_CTL);
  ctsio->io_hdr.flags &= ~CTL_FLAG_ALLOCATED;
 }

 ctl_done((union ctl_io *)ctsio);
 return (CTL_RETVAL_COMPLETE);
}
