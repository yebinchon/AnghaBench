
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_scsiio {int dummy; } ;


 int SSD_ELEM_NONE ;
 int SSD_KEY_UNIT_ATTENTION ;
 int ctl_set_sense (struct ctl_scsiio*,int,int ,int,int,int ) ;

void
ctl_set_ua(struct ctl_scsiio *ctsio, int asc, int ascq)
{
 ctl_set_sense(ctsio,
                          1,
                      SSD_KEY_UNIT_ATTENTION,
        asc,
        ascq,
        SSD_ELEM_NONE);
}
