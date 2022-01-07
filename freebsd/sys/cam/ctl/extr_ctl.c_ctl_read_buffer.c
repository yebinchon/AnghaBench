
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ctl_io {int dummy; } ctl_io ;
typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct scsi_read_buffer_16 {int byte2; int length; int offset; } ;
struct scsi_read_buffer {int byte2; int length; int offset; } ;
struct ctl_scsiio {int* cdb; int* kern_data_ptr; int be_move_done; scalar_t__ kern_sg_entries; scalar_t__ kern_rel_offset; scalar_t__ kern_total_len; scalar_t__ kern_data_len; } ;
struct ctl_lun {int* write_buffer; } ;
typedef int echo_descr ;
typedef int descr ;


 int CTL_DEBUG_PRINT (char*) ;
 struct ctl_lun* CTL_LUN (struct ctl_scsiio*) ;
 int CTL_RETVAL_COMPLETE ;
 scalar_t__ CTL_WRITE_BUFFER_SIZE ;
 int M_CTL ;
 int M_WAITOK ;


 int RWB_MODE ;
 int RWB_MODE_DESCR ;
 int RWB_MODE_ECHO_DESCR ;
 int ctl_config_move_done ;
 int ctl_datamove (union ctl_io*) ;
 int ctl_done (union ctl_io*) ;
 int ctl_set_invalid_field (struct ctl_scsiio*,int,int,int,int ,int ) ;
 int ctl_set_invalid_opcode (struct ctl_scsiio*) ;
 int ctl_set_success (struct ctl_scsiio*) ;
 int* malloc (scalar_t__,int ,int ) ;
 scalar_t__ min (scalar_t__,int) ;
 scalar_t__ scsi_3btoul (int ) ;
 scalar_t__ scsi_4btoul (int ) ;
 scalar_t__ scsi_8btou64 (int ) ;
 int scsi_ulto3b (scalar_t__,int*) ;

int
ctl_read_buffer(struct ctl_scsiio *ctsio)
{
 struct ctl_lun *lun = CTL_LUN(ctsio);
 uint64_t buffer_offset;
 uint32_t len;
 uint8_t byte2;
 static uint8_t descr[4];
 static uint8_t echo_descr[4] = { 0 };

 CTL_DEBUG_PRINT(("ctl_read_buffer\n"));

 switch (ctsio->cdb[0]) {
 case 129: {
  struct scsi_read_buffer *cdb;

  cdb = (struct scsi_read_buffer *)ctsio->cdb;
  buffer_offset = scsi_3btoul(cdb->offset);
  len = scsi_3btoul(cdb->length);
  byte2 = cdb->byte2;
  break;
 }
 case 128: {
  struct scsi_read_buffer_16 *cdb;

  cdb = (struct scsi_read_buffer_16 *)ctsio->cdb;
  buffer_offset = scsi_8btou64(cdb->offset);
  len = scsi_4btoul(cdb->length);
  byte2 = cdb->byte2;
  break;
 }
 default:
  ctl_set_invalid_opcode(ctsio);
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 }

 if (buffer_offset > CTL_WRITE_BUFFER_SIZE ||
     buffer_offset + len > CTL_WRITE_BUFFER_SIZE) {
  ctl_set_invalid_field(ctsio,
                        1,
                      1,
                    6,
                        0,
                  0);
  ctl_done((union ctl_io *)ctsio);
  return (CTL_RETVAL_COMPLETE);
 }

 if ((byte2 & RWB_MODE) == RWB_MODE_DESCR) {
  descr[0] = 0;
  scsi_ulto3b(CTL_WRITE_BUFFER_SIZE, &descr[1]);
  ctsio->kern_data_ptr = descr;
  len = min(len, sizeof(descr));
 } else if ((byte2 & RWB_MODE) == RWB_MODE_ECHO_DESCR) {
  ctsio->kern_data_ptr = echo_descr;
  len = min(len, sizeof(echo_descr));
 } else {
  if (lun->write_buffer == ((void*)0)) {
   lun->write_buffer = malloc(CTL_WRITE_BUFFER_SIZE,
       M_CTL, M_WAITOK);
  }
  ctsio->kern_data_ptr = lun->write_buffer + buffer_offset;
 }
 ctsio->kern_data_len = len;
 ctsio->kern_total_len = len;
 ctsio->kern_rel_offset = 0;
 ctsio->kern_sg_entries = 0;
 ctl_set_success(ctsio);
 ctsio->be_move_done = ctl_config_move_done;
 ctl_datamove((union ctl_io *)ctsio);
 return (CTL_RETVAL_COMPLETE);
}
