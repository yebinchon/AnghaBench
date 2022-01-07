
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int name; struct TYPE_5__* next; } ;
typedef TYPE_1__ pcap_if_t ;
struct TYPE_6__ {TYPE_1__* beginning; } ;
typedef TYPE_2__ pcap_if_list_t ;


 scalar_t__ strcmp (char const*,int ) ;

pcap_if_t *
find_dev(pcap_if_list_t *devlistp, const char *name)
{
 pcap_if_t *curdev;




 for (curdev = devlistp->beginning; curdev != ((void*)0);
     curdev = curdev->next) {
  if (strcmp(name, curdev->name) == 0) {





   return (curdev);
  }
 }




 return (((void*)0));
}
