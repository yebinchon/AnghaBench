
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct ccb_scsiio {int dummy; } ;


 int AP_EXTEND ;
 int AP_FLAG_BYT_BLOK_BLOCKS ;
 int AP_FLAG_TDIR_FROM_DEV ;
 int AP_FLAG_TLEN_SECT_CNT ;


 int ATA_READ_LOG_DMA_EXT ;
 int ATA_READ_LOG_EXT ;
 int CAM_DIR_IN ;
 int scsi_ata_pass (struct ccb_scsiio*,int,void (*) (struct cam_periph*,union ccb*),int ,int,int,int,int ,int ,int,int,int ,int ,int ,int ,int*,int,int *,int ,int ,int,int) ;

int
scsi_ata_read_log(struct ccb_scsiio *csio, uint32_t retries,
    void (*cbfcnp)(struct cam_periph *, union ccb *),
    uint8_t tag_action, uint32_t log_address,
    uint32_t page_number, uint16_t block_count,
    uint8_t protocol, uint8_t *data_ptr, uint32_t dxfer_len,
    uint8_t sense_len, uint32_t timeout)
{
 uint8_t command, protocol_out;
 uint16_t count_out;
 uint64_t lba;
 int retval;

 retval = 0;

 switch (protocol) {
 case 129:
  count_out = block_count;
  command = ATA_READ_LOG_DMA_EXT;
  protocol_out = 129;
  break;
 case 128:
 default:
  count_out = block_count;
  command = ATA_READ_LOG_EXT;
  protocol_out = 128;
  break;
 }

 lba = (((uint64_t)page_number & 0xff00) << 32) |
       ((page_number & 0x00ff) << 8) |
       (log_address & 0xff);

 protocol_out |= AP_EXTEND;

 retval = scsi_ata_pass(csio,
          retries,
          cbfcnp,
                   CAM_DIR_IN,
          tag_action,
                       protocol_out,
                       AP_FLAG_TLEN_SECT_CNT |
         AP_FLAG_BYT_BLOK_BLOCKS |
         AP_FLAG_TDIR_FROM_DEV,
                      0,
                           count_out,
                  lba,
                      command,
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

 return (retval);
}
