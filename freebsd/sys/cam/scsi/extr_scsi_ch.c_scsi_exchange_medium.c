
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_exchange_medium {int invert; int sdst; int fdst; int src; int tea; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_NONE ;
 int EXCHANGE_MEDIUM ;
 int EXCHANGE_MEDIUM_INV1 ;
 int EXCHANGE_MEDIUM_INV2 ;
 int bzero (struct scsi_exchange_medium*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;
 int scsi_ulto2b (int ,int ) ;

void
scsi_exchange_medium(struct ccb_scsiio *csio, u_int32_t retries,
       void (*cbfcnp)(struct cam_periph *, union ccb *),
       u_int8_t tag_action, u_int32_t tea, u_int32_t src,
       u_int32_t dst1, u_int32_t dst2, int invert1,
       int invert2, u_int8_t sense_len, u_int32_t timeout)
{
 struct scsi_exchange_medium *scsi_cmd;

 scsi_cmd = (struct scsi_exchange_medium *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = EXCHANGE_MEDIUM;

 scsi_ulto2b(tea, scsi_cmd->tea);
 scsi_ulto2b(src, scsi_cmd->src);
 scsi_ulto2b(dst1, scsi_cmd->fdst);
 scsi_ulto2b(dst2, scsi_cmd->sdst);

 if (invert1)
  scsi_cmd->invert |= EXCHANGE_MEDIUM_INV1;

 if (invert2)
  scsi_cmd->invert |= EXCHANGE_MEDIUM_INV2;

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
