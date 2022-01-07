
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;


 TYPE_1__* stor_info ;
 int stor_info_no ;

int
uboot_diskgetunit(int type, int type_unit)
{
 int local_type_unit;
 int i;

 local_type_unit = 0;
 for (i = 0; i < stor_info_no; i++) {
  if ((stor_info[i].type & type) == type) {
   if (local_type_unit == type_unit) {
    return (i);
   }
   local_type_unit++;
  }
 }

 return (-1);
}
