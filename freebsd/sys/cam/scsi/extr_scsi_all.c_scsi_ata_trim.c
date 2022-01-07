
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
typedef int u_int32_t ;
typedef int u_int16_t ;
struct ccb_scsiio {int dummy; } ;


 int AP_EXTEND ;
 int AP_FLAG_BYT_BLOK_BLOCKS ;
 int AP_FLAG_TLEN_SECT_CNT ;
 int AP_PROTO_DMA ;
 int ATA_DATA_SET_MANAGEMENT ;
 int ATA_DSM_TRIM ;
 int CAM_DIR_OUT ;
 int scsi_ata_pass_16 (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int,int,int ,int ,int ,int ,int ,int *,int ,int ,int ) ;

void
scsi_ata_trim(struct ccb_scsiio *csio, u_int32_t retries,
       void (*cbfcnp)(struct cam_periph *, union ccb *),
       u_int8_t tag_action, u_int16_t block_count,
       u_int8_t *data_ptr, u_int16_t dxfer_len, u_int8_t sense_len,
       u_int32_t timeout)
{
 scsi_ata_pass_16(csio,
    retries,
    cbfcnp,
             CAM_DIR_OUT,
    tag_action,
                AP_EXTEND|AP_PROTO_DMA,
                 AP_FLAG_TLEN_SECT_CNT|AP_FLAG_BYT_BLOK_BLOCKS,
                ATA_DSM_TRIM,
                    block_count,
           0,
               ATA_DATA_SET_MANAGEMENT,
               0,
    data_ptr,
    dxfer_len,
    sense_len,
    timeout);
}
