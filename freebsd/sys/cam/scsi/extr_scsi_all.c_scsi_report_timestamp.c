
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_timestamp {int service_action; int length; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int MAINTENANCE_IN ;
 int REPORT_TIMESTAMP ;
 int bzero (struct scsi_timestamp*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int,int*,int ,int,int,int ) ;
 int scsi_ulto4b (int ,int ) ;

void
scsi_report_timestamp(struct ccb_scsiio *csio, u_int32_t retries,
   void (*cbfcnp)(struct cam_periph *, union ccb *),
   u_int8_t tag_action, u_int8_t pdf,
   void *buf, u_int32_t alloc_len,
   u_int8_t sense_len, u_int32_t timeout)
{
 struct scsi_timestamp *scsi_cmd;

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                 CAM_DIR_IN,
        tag_action,
                    (u_int8_t *)buf,
                     alloc_len,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);
 scsi_cmd = (struct scsi_timestamp *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));
 scsi_cmd->opcode = MAINTENANCE_IN;
 scsi_cmd->service_action = REPORT_TIMESTAMP | pdf;
 scsi_ulto4b(alloc_len, scsi_cmd->length);
}
