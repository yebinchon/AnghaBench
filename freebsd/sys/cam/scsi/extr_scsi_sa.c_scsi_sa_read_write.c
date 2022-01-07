
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_sa_rw {scalar_t__ control; int length; int sli_fixed; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DATA_BIO ;
 int CAM_DIR_IN ;
 int CAM_DIR_OUT ;
 int SARW_FIXED ;
 int SAR_SLI ;
 int SA_READ ;
 int SA_WRITE ;
 int SCSI_RW_BIO ;
 int SCSI_RW_DIRMASK ;
 int SCSI_RW_READ ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int,int ,int *,int ,int ,int,int ) ;
 int scsi_ulto3b (int ,int ) ;

void
scsi_sa_read_write(struct ccb_scsiio *csio, u_int32_t retries,
     void (*cbfcnp)(struct cam_periph *, union ccb *),
     u_int8_t tag_action, int readop, int sli,
     int fixed, u_int32_t length, u_int8_t *data_ptr,
     u_int32_t dxfer_len, u_int8_t sense_len, u_int32_t timeout)
{
 struct scsi_sa_rw *scsi_cmd;
 int read;

 read = (readop & SCSI_RW_DIRMASK) == SCSI_RW_READ;

 scsi_cmd = (struct scsi_sa_rw *)&csio->cdb_io.cdb_bytes;
 scsi_cmd->opcode = read ? SA_READ : SA_WRITE;
 scsi_cmd->sli_fixed = 0;
 if (sli && read)
  scsi_cmd->sli_fixed |= SAR_SLI;
 if (fixed)
  scsi_cmd->sli_fixed |= SARW_FIXED;
 scsi_ulto3b(length, scsi_cmd->length);
 scsi_cmd->control = 0;

 cam_fill_csio(csio, retries, cbfcnp, (read ? CAM_DIR_IN : CAM_DIR_OUT) |
     ((readop & SCSI_RW_BIO) != 0 ? CAM_DATA_BIO : 0),
     tag_action, data_ptr, dxfer_len, sense_len,
     sizeof(*scsi_cmd), timeout);
}
