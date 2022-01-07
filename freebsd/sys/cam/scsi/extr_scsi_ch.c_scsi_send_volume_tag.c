
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct scsi_send_volume_tag_parameters {int dummy; } ;
struct scsi_send_volume_tag {int pll; int sac; int ea; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_OUT ;
 int SEND_VOLUME_TAG ;
 int bzero (struct scsi_send_volume_tag*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int,int ,int,int ) ;
 int scsi_ulto2b (int,int ) ;

void
scsi_send_volume_tag(struct ccb_scsiio *csio, u_int32_t retries,
       void (*cbfcnp)(struct cam_periph *, union ccb *),
       u_int8_t tag_action,
       u_int16_t element_address,
       u_int8_t send_action_code,
       struct scsi_send_volume_tag_parameters *parameters,
       u_int8_t sense_len, u_int32_t timeout)
{
 struct scsi_send_volume_tag *scsi_cmd;

 scsi_cmd = (struct scsi_send_volume_tag *) &csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = SEND_VOLUME_TAG;
 scsi_ulto2b(element_address, scsi_cmd->ea);
 scsi_cmd->sac = send_action_code;
 scsi_ulto2b(sizeof(*parameters), scsi_cmd->pll);

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                  CAM_DIR_OUT,
        tag_action,
                       (u_int8_t *) parameters,
        sizeof(*parameters),
        sense_len,
        sizeof(*scsi_cmd),
        timeout);
}
