
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
 int CAM_DIR_IN ;
 int ata_28bit_cmd (struct ccb_ataio*,int ,int ,int,int) ;
 int cam_fill_ataio (struct ccb_ataio*,int ,void (*) (struct cam_periph*,union ccb*),int ,int ,int *,int,int ) ;
 int min (int,int) ;

void
semb_receive_diagnostic_results(struct ccb_ataio *ataio,
    u_int32_t retries, void (*cbfcnp)(struct cam_periph *, union ccb*),
    uint8_t tag_action, int pcv, uint8_t page_code,
    uint8_t *data_ptr, uint16_t length, uint32_t timeout)
{

 length = min(length, 1020);
 length = (length + 3) & ~3;
 cam_fill_ataio(ataio,
        retries,
        cbfcnp,
                 CAM_DIR_IN,
        tag_action,
        data_ptr,
        length,
        timeout);
 ata_28bit_cmd(ataio, ATA_SEP_ATTN,
     pcv ? page_code : 0, 0x02, length / 4);
}
