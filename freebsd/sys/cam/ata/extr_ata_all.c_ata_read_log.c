
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct ccb_ataio {int dummy; } ;


 int ATA_READ_LOG_DMA_EXT ;
 int ATA_READ_LOG_EXT ;
 int CAM_ATAIO_DMA ;
 int CAM_DIR_IN ;
 int ata_48bit_cmd (struct ccb_ataio*,int ,int ,int,int ) ;
 int cam_fill_ataio (struct ccb_ataio*,int,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int,int) ;

void
ata_read_log(struct ccb_ataio *ataio, uint32_t retries,
      void (*cbfcnp)(struct cam_periph *, union ccb *),
      uint32_t log_address, uint32_t page_number, uint16_t block_count,
      uint32_t protocol, uint8_t *data_ptr, uint32_t dxfer_len,
      uint32_t timeout)
{
 uint64_t lba;

 cam_fill_ataio(ataio,
                 1,
                cbfcnp,
               CAM_DIR_IN,
                    0,
                  data_ptr,
                   dxfer_len,
                 timeout);

 lba = (((uint64_t)page_number & 0xff00) << 32) |
       ((page_number & 0x00ff) << 8) |
       (log_address & 0xff);

 ata_48bit_cmd(ataio,
             (protocol & CAM_ATAIO_DMA) ? ATA_READ_LOG_DMA_EXT :
       ATA_READ_LOG_EXT,
                  0,
             lba,
                      block_count);
}
