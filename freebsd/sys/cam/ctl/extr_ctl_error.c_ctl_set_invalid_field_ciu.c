
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_scsiio {int dummy; } ;


 int SSD_ELEM_NONE ;
 int SSD_KEY_ABORTED_COMMAND ;
 int ctl_set_sense (struct ctl_scsiio*,int,int ,int,int,int ) ;

void
ctl_set_invalid_field_ciu(struct ctl_scsiio *ctsio)
{


 ctl_set_sense(ctsio,
                          1,
                      SSD_KEY_ABORTED_COMMAND,
                 0x0E,
                 0x03,
        SSD_ELEM_NONE);
}
