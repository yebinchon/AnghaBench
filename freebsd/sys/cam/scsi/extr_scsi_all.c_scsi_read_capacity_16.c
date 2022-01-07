
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int u_int8_t ;
struct scsi_read_capacity_16 {int alloc_len; int addr; int service_action; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int SERVICE_ACTION_IN ;
 int SRC16_PMI ;
 int SRC16_RELADR ;
 int SRC16_SERVICE_ACTION ;
 int bzero (struct scsi_read_capacity_16*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int,int ,int,int ) ;
 int scsi_u64to8b (int ,int ) ;
 int scsi_ulto4b (int,int ) ;

void
scsi_read_capacity_16(struct ccb_scsiio *csio, uint32_t retries,
        void (*cbfcnp)(struct cam_periph *, union ccb *),
        uint8_t tag_action, uint64_t lba, int reladr, int pmi,
        uint8_t *rcap_buf, int rcap_buf_len, uint8_t sense_len,
        uint32_t timeout)
{
 struct scsi_read_capacity_16 *scsi_cmd;


 cam_fill_csio(csio,
        retries,
        cbfcnp,
                 CAM_DIR_IN,
        tag_action,
                    (u_int8_t *)rcap_buf,
                     rcap_buf_len,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);
 scsi_cmd = (struct scsi_read_capacity_16 *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));
 scsi_cmd->opcode = SERVICE_ACTION_IN;
 scsi_cmd->service_action = SRC16_SERVICE_ACTION;
 scsi_u64to8b(lba, scsi_cmd->addr);
 scsi_ulto4b(rcap_buf_len, scsi_cmd->alloc_len);
 if (pmi)
  reladr |= SRC16_PMI;
 if (reladr)
  reladr |= SRC16_RELADR;
}
