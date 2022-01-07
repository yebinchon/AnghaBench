
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int u_int32_t ;
struct ccb_ataio {int dummy; } ;


 int ATA_SEP_ATTN ;
 int CAM_DIR_NONE ;
 int CAM_DIR_OUT ;
 int ata_28bit_cmd (struct ccb_ataio*,int ,int ,int,int) ;
 int cam_fill_ataio (struct ccb_ataio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int,int ) ;
 int min (int,int) ;

void
semb_write_buffer(struct ccb_ataio *ataio,
    u_int32_t retries, void (*cbfcnp)(struct cam_periph *, union ccb *),
    uint8_t tag_action, uint8_t *data_ptr, uint16_t length, uint32_t timeout)
{

 length = min(length, 1020);
 length = (length + 3) & ~3;
 cam_fill_ataio(ataio,
        retries,
        cbfcnp,
                 length ? CAM_DIR_OUT : CAM_DIR_NONE,
        tag_action,
        data_ptr,
        length,
        timeout);
 ata_28bit_cmd(ataio, ATA_SEP_ATTN,
     length > 0 ? data_ptr[0] : 0, 0x80, length / 4);
}
