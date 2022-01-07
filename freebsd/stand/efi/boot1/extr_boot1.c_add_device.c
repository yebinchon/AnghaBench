
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ dev_info_t ;



void
add_device(dev_info_t **devinfop, dev_info_t *devinfo)
{
 dev_info_t *dev;

 if (*devinfop == ((void*)0)) {
  *devinfop = devinfo;
  return;
 }

 for (dev = *devinfop; dev->next != ((void*)0); dev = dev->next)
  ;

 dev->next = devinfo;
}
