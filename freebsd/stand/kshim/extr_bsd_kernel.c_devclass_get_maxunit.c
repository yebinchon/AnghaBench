
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* devclass_t ;
struct TYPE_3__ {scalar_t__* dev_list; } ;


 int DEVCLASS_MAXUNIT ;

int
devclass_get_maxunit(devclass_t dc)
{
 int max_unit = 0;

 if (dc) {
  max_unit = DEVCLASS_MAXUNIT;
  while (max_unit--) {
   if (dc->dev_list[max_unit]) {
    break;
   }
  }
  max_unit++;
 }
 return (max_unit);
}
