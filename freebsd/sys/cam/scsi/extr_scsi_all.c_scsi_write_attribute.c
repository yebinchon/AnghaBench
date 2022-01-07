
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_write_attribute {int logical_volume; int partition; int length; int element; int byte2; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_OUT ;
 int SWA_WTC ;
 int WRITE_ATTRIBUTE ;
 int bzero (struct scsi_write_attribute*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int,int,int ) ;
 int scsi_ulto3b (int ,int ) ;
 int scsi_ulto4b (int ,int ) ;

void
scsi_write_attribute(struct ccb_scsiio *csio, u_int32_t retries,
      void (*cbfcnp)(struct cam_periph *, union ccb *),
      u_int8_t tag_action, uint32_t element, int logical_volume,
      int partition, int wtc, u_int8_t *data_ptr,
      u_int32_t length, int sense_len, u_int32_t timeout)
{
 struct scsi_write_attribute *scsi_cmd;

 scsi_cmd = (struct scsi_write_attribute *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = WRITE_ATTRIBUTE;
 if (wtc != 0)
  scsi_cmd->byte2 = SWA_WTC;
 scsi_ulto3b(element, scsi_cmd->element);
 scsi_cmd->logical_volume = logical_volume;
 scsi_cmd->partition = partition;
 scsi_ulto4b(length, scsi_cmd->length);

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                 CAM_DIR_OUT,
        tag_action,
                    data_ptr,
                     length,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);
}
