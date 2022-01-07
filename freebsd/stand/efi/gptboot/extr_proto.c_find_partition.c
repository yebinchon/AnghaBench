
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int devpath; struct TYPE_4__* next; } ;
typedef TYPE_1__ dev_info_t ;


 TYPE_1__* devices ;
 int partition_number (int ) ;

__attribute__((used)) static dev_info_t *
find_partition(int part)
{
 dev_info_t *dev;

 if (part == 0)
  return (((void*)0));
 for (dev = devices; dev != ((void*)0); dev = dev->next)
  if (partition_number(dev->devpath) == part)
   break;
 return (dev);
}
