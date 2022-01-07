
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_report_density_support {int length; int byte1; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int REPORT_DENSITY_SUPPORT ;
 int SRDS_MEDIA ;
 int SRDS_MEDIUM_TYPE ;
 int bzero (struct scsi_report_density_support*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;
 int scsi_ulto2b (int ,int ) ;

void
scsi_report_density_support(struct ccb_scsiio *csio, u_int32_t retries,
       void (*cbfcnp)(struct cam_periph *, union ccb *),
       u_int8_t tag_action, int media, int medium_type,
       u_int8_t *data_ptr, u_int32_t length,
       u_int32_t sense_len, u_int32_t timeout)
{
 struct scsi_report_density_support *scsi_cmd;

 scsi_cmd =(struct scsi_report_density_support *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = REPORT_DENSITY_SUPPORT;
 if (media != 0)
  scsi_cmd->byte1 |= SRDS_MEDIA;
 if (medium_type != 0)
  scsi_cmd->byte1 |= SRDS_MEDIUM_TYPE;

 scsi_ulto2b(length, scsi_cmd->length);

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                 CAM_DIR_IN,
        tag_action,
                    data_ptr,
                     length,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);
}
