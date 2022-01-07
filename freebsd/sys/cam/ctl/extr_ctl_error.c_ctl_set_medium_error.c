
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ctl_scsiio {int dummy; } ;


 int SSD_ELEM_NONE ;
 int SSD_KEY_MEDIUM_ERROR ;
 int ctl_set_sense (struct ctl_scsiio*,int,int ,int,int,int ) ;

void
ctl_set_medium_error(struct ctl_scsiio *ctsio, int read)
{
 if (read) {

  ctl_set_sense(ctsio,
                           1,
                       SSD_KEY_MEDIUM_ERROR,
                 0x11,
                  0x00,
         SSD_ELEM_NONE);
 } else {

  ctl_set_sense(ctsio,
                           1,
                       SSD_KEY_MEDIUM_ERROR,
                 0x0C,
                  0x02,
         SSD_ELEM_NONE);
 }
}
