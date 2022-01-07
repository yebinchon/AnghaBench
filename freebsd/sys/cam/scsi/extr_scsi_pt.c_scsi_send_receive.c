
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int ;
struct scsi_send_receive {scalar_t__ control; int xfer_len; int byte2; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int CAM_DIR_OUT ;
 int RECEIVE ;
 int SEND ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;
 int scsi_ulto3b (int ,int ) ;

void
scsi_send_receive(struct ccb_scsiio *csio, u_int32_t retries,
    void (*cbfcnp)(struct cam_periph *, union ccb *),
    u_int tag_action, int readop, u_int byte2,
    u_int32_t xfer_len, u_int8_t *data_ptr, u_int8_t sense_len,
    u_int32_t timeout)
{
 struct scsi_send_receive *scsi_cmd;

 scsi_cmd = (struct scsi_send_receive *)&csio->cdb_io.cdb_bytes;
 scsi_cmd->opcode = readop ? RECEIVE : SEND;
 scsi_cmd->byte2 = byte2;
 scsi_ulto3b(xfer_len, scsi_cmd->xfer_len);
 scsi_cmd->control = 0;

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                 readop ? CAM_DIR_IN : CAM_DIR_OUT,
        tag_action,
        data_ptr,
        xfer_len,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);
}
