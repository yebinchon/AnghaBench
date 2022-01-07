
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef scalar_t__ u_int32_t ;
struct scsi_report_key {int agid_keyformat; int alloc_len; int lba; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int CAM_DIR_NONE ;
 int REPORT_KEY ;
 int RK_KF_AGID_SHIFT ;
 int RK_KF_KEYFORMAT_MASK ;
 int bzero (struct scsi_report_key*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,scalar_t__,void (*) (struct cam_periph*,union ccb*),int ,int,int*,scalar_t__,int,int,scalar_t__) ;
 int scsi_ulto2b (scalar_t__,int ) ;
 int scsi_ulto4b (scalar_t__,int ) ;

void
scsi_report_key(struct ccb_scsiio *csio, u_int32_t retries,
  void (*cbfcnp)(struct cam_periph *, union ccb *),
  u_int8_t tag_action, u_int32_t lba, u_int8_t agid,
  u_int8_t key_format, u_int8_t *data_ptr, u_int32_t dxfer_len,
  u_int8_t sense_len, u_int32_t timeout)
{
 struct scsi_report_key *scsi_cmd;

 scsi_cmd = (struct scsi_report_key *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));
 scsi_cmd->opcode = REPORT_KEY;
 scsi_ulto4b(lba, scsi_cmd->lba);
 scsi_ulto2b(dxfer_len, scsi_cmd->alloc_len);
 scsi_cmd->agid_keyformat = (agid << RK_KF_AGID_SHIFT) |
  (key_format & RK_KF_KEYFORMAT_MASK);

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                  (dxfer_len == 0) ? CAM_DIR_NONE : CAM_DIR_IN,
        tag_action,
                     data_ptr,
                      dxfer_len,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);
}
