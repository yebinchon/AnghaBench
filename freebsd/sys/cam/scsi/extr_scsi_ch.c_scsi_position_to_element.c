
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_position_to_element {int invert; int dst; int tea; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_NONE ;
 int POSITION_TO_ELEMENT ;
 int POSITION_TO_ELEMENT_INVERT ;
 int bzero (struct scsi_position_to_element*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;
 int scsi_ulto2b (int ,int ) ;

void
scsi_position_to_element(struct ccb_scsiio *csio, u_int32_t retries,
    void (*cbfcnp)(struct cam_periph *, union ccb *),
    u_int8_t tag_action, u_int32_t tea, u_int32_t dst,
    int invert, u_int8_t sense_len, u_int32_t timeout)
{
 struct scsi_position_to_element *scsi_cmd;

 scsi_cmd = (struct scsi_position_to_element *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = POSITION_TO_ELEMENT;

 scsi_ulto2b(tea, scsi_cmd->tea);
 scsi_ulto2b(dst, scsi_cmd->dst);

 if (invert)
  scsi_cmd->invert |= POSITION_TO_ELEMENT_INVERT;

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                  CAM_DIR_NONE,
        tag_action,
                     ((void*)0),
                      0,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);
}
