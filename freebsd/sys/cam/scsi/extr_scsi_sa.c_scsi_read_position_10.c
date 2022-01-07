
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int8_t ;
typedef int u_int32_t ;
struct scsi_tape_read_position {int byte1; int length; int opcode; } ;
struct TYPE_2__ {int cdb_bytes; } ;
struct ccb_scsiio {TYPE_1__ cdb_io; } ;


 int CAM_DIR_IN ;
 int READ_POSITION ;
 int SA_RPOS_EXTENDED_FORM ;
 int bzero (struct scsi_tape_read_position*,int) ;
 int cam_fill_csio (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int ,int ,int,int ) ;
 int scsi_ulto2b (int ,int ) ;

void
scsi_read_position_10(struct ccb_scsiio *csio, u_int32_t retries,
        void (*cbfcnp)(struct cam_periph *, union ccb *),
        u_int8_t tag_action, int service_action,
        u_int8_t *data_ptr, u_int32_t length,
        u_int32_t sense_len, u_int32_t timeout)
{
 struct scsi_tape_read_position *scmd;

 cam_fill_csio(csio,
        retries,
        cbfcnp,
                 CAM_DIR_IN,
        tag_action,
                    data_ptr,
                     length,
        sense_len,
        sizeof(*scmd),
        timeout);


 scmd = (struct scsi_tape_read_position *)&csio->cdb_io.cdb_bytes;
 bzero(scmd, sizeof(*scmd));
 scmd->opcode = READ_POSITION;
 scmd->byte1 = service_action;




 if (service_action == SA_RPOS_EXTENDED_FORM)
  scsi_ulto2b(length, scmd->length);
}
