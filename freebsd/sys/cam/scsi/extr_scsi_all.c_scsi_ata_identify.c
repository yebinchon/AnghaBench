
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct ccb_scsiio {int dummy; } ;


 int AP_FLAG_BYT_BLOK_BLOCKS ;
 int AP_FLAG_TDIR_FROM_DEV ;
 int AP_FLAG_TLEN_SECT_CNT ;
 int AP_PROTO_PIO_IN ;
 int ATA_ATA_IDENTIFY ;
 int CAM_DIR_IN ;
 int scsi_ata_pass (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int ,int,int ,int,int ,int ,int ,int ,int ,int ,int *,int,int *,int ,int ,int ,int ) ;

void
scsi_ata_identify(struct ccb_scsiio *csio, u_int32_t retries,
    void (*cbfcnp)(struct cam_periph *, union ccb *),
    u_int8_t tag_action, u_int8_t *data_ptr,
    u_int16_t dxfer_len, u_int8_t sense_len,
    u_int32_t timeout)
{
 scsi_ata_pass(csio,
        retries,
        cbfcnp,
                 CAM_DIR_IN,
        tag_action,
                    AP_PROTO_PIO_IN,
                     AP_FLAG_TDIR_FROM_DEV |
       AP_FLAG_BYT_BLOK_BLOCKS |
       AP_FLAG_TLEN_SECT_CNT,
                    0,
                        dxfer_len / 512,
               0,
                   ATA_ATA_IDENTIFY,
                   0,
                0,
                      0,
                   0,
        data_ptr,
        dxfer_len,
                        ((void*)0),
                            0,
                             0,
        sense_len,
        timeout);
}
