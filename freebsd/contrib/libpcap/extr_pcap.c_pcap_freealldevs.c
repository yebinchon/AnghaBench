
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* description; struct TYPE_5__* name; struct TYPE_5__* dstaddr; struct TYPE_5__* broadaddr; struct TYPE_5__* netmask; struct TYPE_5__* addr; struct TYPE_5__* next; struct TYPE_5__* addresses; } ;
typedef TYPE_1__ pcap_if_t ;
typedef TYPE_1__ pcap_addr_t ;


 int free (TYPE_1__*) ;

void
pcap_freealldevs(pcap_if_t *alldevs)
{
 pcap_if_t *curdev, *nextdev;
 pcap_addr_t *curaddr, *nextaddr;

 for (curdev = alldevs; curdev != ((void*)0); curdev = nextdev) {
  nextdev = curdev->next;




  for (curaddr = curdev->addresses; curaddr != ((void*)0); curaddr = nextaddr) {
   nextaddr = curaddr->next;
   if (curaddr->addr)
    free(curaddr->addr);
   if (curaddr->netmask)
    free(curaddr->netmask);
   if (curaddr->broadaddr)
    free(curaddr->broadaddr);
   if (curaddr->dstaddr)
    free(curaddr->dstaddr);
   free(curaddr);
  }




  free(curdev->name);




  if (curdev->description != ((void*)0))
   free(curdev->description);




  free(curdev);
 }
}
