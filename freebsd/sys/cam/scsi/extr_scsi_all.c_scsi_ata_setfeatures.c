
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct ccb_scsiio {int dummy; } ;


 int AP_FLAG_BYT_BLOK_BYTES ;
 int AP_FLAG_TDIR_FROM_DEV ;
 int AP_FLAG_TLEN_SECT_CNT ;
 int AP_PROTO_PIO_IN ;
 int ATA_SETFEATURES ;
 int CAM_DIR_NONE ;
 int scsi_ata_pass (struct ccb_scsiio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int *,int ,int *,int ,int ,int ,int ) ;

int scsi_ata_setfeatures(struct ccb_scsiio *csio, uint32_t retries,
    void (*cbfcnp)(struct cam_periph *, union ccb *),
    uint8_t tag_action, uint8_t feature,
    uint64_t lba, uint32_t count,
    uint8_t sense_len, uint32_t timeout)
{
 return (scsi_ata_pass(csio,
  retries,
  cbfcnp,
           CAM_DIR_NONE,
  tag_action,
              AP_PROTO_PIO_IN,
               AP_FLAG_TDIR_FROM_DEV |
        AP_FLAG_BYT_BLOK_BYTES |
        AP_FLAG_TLEN_SECT_CNT,
              feature,
                  count,
         lba,
             ATA_SETFEATURES,
             0,
          0,
               0,
             0,
              ((void*)0),
               0,
                 ((void*)0),
                     0,
                      0,
  sense_len,
  timeout));
}
