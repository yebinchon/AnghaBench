
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef void* u_int8_t ;
typedef int u_int32_t ;
struct scsi_read_attribute {int logical_volume; int partition; int cache; int length; int first_attribute; void* elem_type; int element; void* service_action; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int READ_ATTRIBUTE ;
 int SRA_CACHE ;
 int bzero (struct scsi_read_attribute*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,void*,void**,int ,int,int,int ) ;
 int scsi_ulto2b (int ,int ) ;
 int scsi_ulto4b (int ,int ) ;

void
scsi_read_attribute(struct ccb_scsiio *csio, u_int32_t retries,
      void (*cbfcnp)(struct cam_periph *, union ccb *),
      u_int8_t tag_action, u_int8_t service_action,
      uint32_t element, u_int8_t elem_type, int logical_volume,
      int partition, u_int32_t first_attribute, int cache,
      u_int8_t *data_ptr, u_int32_t length, int sense_len,
      u_int32_t timeout)
{
 struct scsi_read_attribute *scsi_cmd;

 scsi_cmd = (struct scsi_read_attribute *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));

 scsi_cmd->opcode = READ_ATTRIBUTE;
 scsi_cmd->service_action = service_action;
 scsi_ulto2b(element, scsi_cmd->element);
 scsi_cmd->elem_type = elem_type;
 scsi_cmd->logical_volume = logical_volume;
 scsi_cmd->partition = partition;
 scsi_ulto2b(first_attribute, scsi_cmd->first_attribute);
 scsi_ulto4b(length, scsi_cmd->length);
 if (cache != 0)
  scsi_cmd->cache |= SRA_CACHE;

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
