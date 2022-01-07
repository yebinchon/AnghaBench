
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct ctl_scsiio {int dummy; } ;
typedef int info ;


 int SSD_ELEM_INFO ;
 int SSD_ELEM_NONE ;
 int SSD_ELEM_SKIP ;
 int SSD_KEY_ILLEGAL_REQUEST ;
 int ctl_set_sense (struct ctl_scsiio*,int,int ,int,int,int ,int,int **,int ) ;
 int scsi_u64to8b (scalar_t__,int *) ;

void
ctl_set_lba_out_of_range(struct ctl_scsiio *ctsio, uint64_t lba)
{
 uint8_t info[8];

 scsi_u64to8b(lba, info);


 ctl_set_sense(ctsio,
                          1,
                      SSD_KEY_ILLEGAL_REQUEST,
                0x21,
                 0x00,
                 (lba != 0) ? SSD_ELEM_INFO : SSD_ELEM_SKIP,
                 sizeof(info), &info,
        SSD_ELEM_NONE);
}
