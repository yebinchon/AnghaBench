
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef void* uint8_t ;
typedef int uint32_t ;
struct scsi_read_toc {int data_len; void* from_track; void* format; void* byte2; int op_code; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int READ_TOC ;
 int bzero (struct scsi_read_toc*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,void*,void**,int ,int,int,int) ;
 int scsi_ulto2b (int ,int ) ;

void
scsi_read_toc(struct ccb_scsiio *csio, uint32_t retries,
       void (*cbfcnp)(struct cam_periph *, union ccb *),
       uint8_t tag_action, uint8_t byte1_flags, uint8_t format,
       uint8_t track, uint8_t *data_ptr, uint32_t dxfer_len,
       int sense_len, int timeout)
{
 struct scsi_read_toc *scsi_cmd;

 scsi_cmd = (struct scsi_read_toc *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));
 scsi_cmd->op_code = READ_TOC;






 scsi_cmd->byte2 = byte1_flags;
 scsi_cmd->format = format;
 scsi_cmd->from_track = track;
 scsi_ulto2b(dxfer_len, scsi_cmd->data_len);

 cam_fill_csio(csio,
                      retries,
                     cbfcnp,
                    CAM_DIR_IN,
                         tag_action,
                       data_ptr,
                        dxfer_len,
                        sense_len,
        sizeof(*scsi_cmd),
                      timeout);
}
