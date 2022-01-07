
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pcap_if_t ;
struct TYPE_5__ {int * beginning; } ;
typedef TYPE_1__ pcap_if_list_t ;
struct TYPE_6__ {int (* findalldevs_op ) (TYPE_1__*,char*) ;} ;


 TYPE_4__* capture_source_types ;
 int pcap_freealldevs (int *) ;
 int pcap_platform_finddevs (TYPE_1__*,char*) ;
 int stub1 (TYPE_1__*,char*) ;

int
pcap_findalldevs(pcap_if_t **alldevsp, char *errbuf)
{
 size_t i;
 pcap_if_list_t devlist;





 devlist.beginning = ((void*)0);
 if (pcap_platform_finddevs(&devlist, errbuf) == -1) {




  if (devlist.beginning != ((void*)0))
   pcap_freealldevs(devlist.beginning);
  *alldevsp = ((void*)0);
  return (-1);
 }





 for (i = 0; capture_source_types[i].findalldevs_op != ((void*)0); i++) {
  if (capture_source_types[i].findalldevs_op(&devlist, errbuf) == -1) {




   if (devlist.beginning != ((void*)0))
    pcap_freealldevs(devlist.beginning);
   *alldevsp = ((void*)0);
   return (-1);
  }
 }




 *alldevsp = devlist.beginning;
 return (0);
}
