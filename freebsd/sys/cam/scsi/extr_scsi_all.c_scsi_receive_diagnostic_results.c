
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int32_t ;
struct scsi_receive_diag {int length; int page_code; int byte2; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int RECEIVE_DIAGNOSTIC ;
 int SRD_PCV ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;
 int memset (struct scsi_receive_diag*,int ,int) ;
 int scsi_ulto2b (int ,int ) ;

void
scsi_receive_diagnostic_results(struct ccb_scsiio *csio, u_int32_t retries,
    void (*cbfcnp)(struct cam_periph *, union ccb*),
    uint8_t tag_action, int pcv, uint8_t page_code,
    uint8_t *data_ptr, uint16_t allocation_length,
    uint8_t sense_len, uint32_t timeout)
{
 struct scsi_receive_diag *scsi_cmd;

 scsi_cmd = (struct scsi_receive_diag *)&csio->cdb_io.cdb_bytes;
 memset(scsi_cmd, 0, sizeof(*scsi_cmd));
 scsi_cmd->opcode = RECEIVE_DIAGNOSTIC;
 if (pcv) {
  scsi_cmd->byte2 |= SRD_PCV;
  scsi_cmd->page_code = page_code;
 }
 scsi_ulto2b(allocation_length, scsi_cmd->length);

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                 CAM_DIR_IN,
        tag_action,
        data_ptr,
        allocation_length,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);
}
