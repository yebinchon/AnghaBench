
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ctl_scsiio {int dummy; } ;


 int SSD_ELEM_NONE ;
 int SSD_KEY_ILLEGAL_REQUEST ;
 int ctl_set_sense (struct ctl_scsiio*,int,int ,int,int ,int ) ;

void
ctl_set_overlapped_tag(struct ctl_scsiio *ctsio, uint8_t tag)
{

 ctl_set_sense(ctsio,
                          1,
                      SSD_KEY_ILLEGAL_REQUEST,
                0x4D,
                 tag,
        SSD_ELEM_NONE);
}
