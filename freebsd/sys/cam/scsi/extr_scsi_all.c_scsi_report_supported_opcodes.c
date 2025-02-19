
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct scsi_report_supported_opcodes {int options; int requested_opcode; int length; int requested_service_action; int service_action; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int MAINTENANCE_IN ;
 int REPORT_SUPPORTED_OPERATION_CODES ;
 int bzero (struct scsi_report_supported_opcodes*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int,int,int) ;
 int scsi_ulto2b (int,int ) ;
 int scsi_ulto4b (int ,int ) ;

void
scsi_report_supported_opcodes(struct ccb_scsiio *csio, uint32_t retries,
         void (*cbfcnp)(struct cam_periph *, union ccb *),
         uint8_t tag_action, int options, int req_opcode,
         int req_service_action, uint8_t *data_ptr,
         uint32_t dxfer_len, int sense_len, int timeout)
{
 struct scsi_report_supported_opcodes *scsi_cmd;

 scsi_cmd = (struct scsi_report_supported_opcodes *)
     &csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = MAINTENANCE_IN;
 scsi_cmd->service_action = REPORT_SUPPORTED_OPERATION_CODES;
 scsi_cmd->options = options;
 scsi_cmd->requested_opcode = req_opcode;
 scsi_ulto2b(req_service_action, scsi_cmd->requested_service_action);
 scsi_ulto4b(dxfer_len, scsi_cmd->length);

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
