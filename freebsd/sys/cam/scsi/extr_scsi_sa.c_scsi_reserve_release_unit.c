
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_reserve_release_unit {int lun_thirdparty; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_NONE ;
 int RELEASE_UNIT ;
 int RESERVE_UNIT ;
 int SRRU_3RD_MASK ;
 int SRRU_3RD_PARTY ;
 int SRRU_3RD_SHAMT ;
 int bzero (struct scsi_reserve_release_unit*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;

void
scsi_reserve_release_unit(struct ccb_scsiio *csio, u_int32_t retries,
     void (*cbfcnp)(struct cam_periph *, union ccb *),
     u_int8_t tag_action, int third_party,
     int third_party_id, u_int8_t sense_len,
     u_int32_t timeout, int reserve)
{
 struct scsi_reserve_release_unit *scsi_cmd;

 scsi_cmd = (struct scsi_reserve_release_unit *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 if (reserve)
  scsi_cmd->opcode = RESERVE_UNIT;
 else
  scsi_cmd->opcode = RELEASE_UNIT;

 if (third_party) {
  scsi_cmd->lun_thirdparty |= SRRU_3RD_PARTY;
  scsi_cmd->lun_thirdparty |=
   ((third_party_id << SRRU_3RD_SHAMT) & SRRU_3RD_MASK);
 }

 cam_fill_csio(csio, retries, cbfcnp, CAM_DIR_NONE, tag_action, ((void*)0),
     0, sense_len, sizeof(*scsi_cmd), timeout);
}
