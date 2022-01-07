
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_read_dvd_structure {int layer_number; int format; int agid; int alloc_len; int address; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int READ_DVD_STRUCTURE ;
 int bzero (struct scsi_read_dvd_structure*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int,int*,int ,int,int,int ) ;
 int scsi_ulto2b (int ,int ) ;
 int scsi_ulto4b (int ,int ) ;

void
scsi_read_dvd_structure(struct ccb_scsiio *csio, u_int32_t retries,
   void (*cbfcnp)(struct cam_periph *, union ccb *),
   u_int8_t tag_action, u_int32_t address,
   u_int8_t layer_number, u_int8_t format, u_int8_t agid,
   u_int8_t *data_ptr, u_int32_t dxfer_len,
   u_int8_t sense_len, u_int32_t timeout)
{
 struct scsi_read_dvd_structure *scsi_cmd;

 scsi_cmd = (struct scsi_read_dvd_structure *)&csio->cdb_io.cdb_bytes;
 bzero(scsi_cmd, sizeof(*scsi_cmd));
 scsi_cmd->opcode = READ_DVD_STRUCTURE;

 scsi_ulto4b(address, scsi_cmd->address);
 scsi_cmd->layer_number = layer_number;
 scsi_cmd->format = format;
 scsi_ulto2b(dxfer_len, scsi_cmd->alloc_len);

 scsi_cmd->agid = agid << 6;

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                  CAM_DIR_IN,
        tag_action,
                     data_ptr,
                      dxfer_len,
        sense_len,
        sizeof(*scsi_cmd),
        timeout);
}
