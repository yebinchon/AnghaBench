
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct ctl_scsiio {int dummy; } ;
typedef int sks ;


 int SSD_ELEM_NONE ;
 int SSD_ELEM_SKIP ;
 int SSD_ELEM_SKS ;
 int SSD_KEY_HARDWARE_ERROR ;
 int SSD_SCS_VALID ;
 int ctl_set_sense (struct ctl_scsiio*,int,int ,int,int,int ,int,int*,int ) ;

void
ctl_set_internal_failure(struct ctl_scsiio *ctsio, int sks_valid,
    uint16_t retry_count)
{
 uint8_t sks[3];

 if (sks_valid) {
  sks[0] = SSD_SCS_VALID;
  sks[1] = (retry_count >> 8) & 0xff;
  sks[2] = retry_count & 0xff;
 }


 ctl_set_sense(ctsio,
                          1,
                      SSD_KEY_HARDWARE_ERROR,
                0x44,
                 0x00,
                 (sks_valid != 0) ? SSD_ELEM_SKS : SSD_ELEM_SKIP,
                 sizeof(sks),
                 sks,
        SSD_ELEM_NONE);
}
