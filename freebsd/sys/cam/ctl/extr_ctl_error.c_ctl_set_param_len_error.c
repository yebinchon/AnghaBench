
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_scsiio {int dummy; } ;


 int SSD_ELEM_NONE ;
 int SSD_KEY_ILLEGAL_REQUEST ;
 int ctl_set_sense (struct ctl_scsiio*,int,int ,int,int,int ) ;

void
ctl_set_param_len_error(struct ctl_scsiio *ctsio)
{

 ctl_set_sense(ctsio,
                          1,
                      SSD_KEY_ILLEGAL_REQUEST,
                0x1a,
                 0x00,
        SSD_ELEM_NONE);
}
