
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;


 int DEV_TYP_STOR ;
 int dev_valid (int) ;
 TYPE_1__* devices ;

__attribute__((used)) static int
dev_stor_valid(int handle)
{

 if (!dev_valid(handle))
  return (0);

 if (!(devices[handle].type & DEV_TYP_STOR))
  return (0);

 return (1);
}
