
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_log_select {int page; int length; int byte2; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_OUT ;
 int LOG_SELECT ;
 int SLS_PAGE_CODE ;
 int SLS_PCR ;
 int SLS_SP ;
 int bzero (struct scsi_log_select*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int,int*,int ,int,int,int ) ;
 int scsi_ulto2b (int ,int ) ;

void
scsi_log_select(struct ccb_scsiio *csio, u_int32_t retries,
  void (*cbfcnp)(struct cam_periph *, union ccb *),
  u_int8_t tag_action, u_int8_t page_code, int save_pages,
  int pc_reset, u_int8_t *param_buf, u_int32_t param_len,
  u_int8_t sense_len, u_int32_t timeout)
{
 struct scsi_log_select *scsi_cmd;
 u_int8_t cdb_len;

 scsi_cmd = (struct scsi_log_select *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));
 scsi_cmd->opcode = LOG_SELECT;
 scsi_cmd->page = page_code & SLS_PAGE_CODE;
 if (save_pages != 0)
  scsi_cmd->byte2 |= SLS_SP;
 if (pc_reset != 0)
  scsi_cmd->byte2 |= SLS_PCR;
 scsi_ulto2b(param_len, scsi_cmd->length);
 cdb_len = sizeof(*scsi_cmd);

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                 CAM_DIR_OUT,
        tag_action,
                    param_buf,
                     param_len,
        sense_len,
        cdb_len,
        timeout);
}
