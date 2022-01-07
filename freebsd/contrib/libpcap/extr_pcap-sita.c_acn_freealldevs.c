
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* description; struct TYPE_5__* name; struct TYPE_5__* dstaddr; struct TYPE_5__* broadaddr; struct TYPE_5__* netmask; struct TYPE_5__* addr; struct TYPE_5__* next; struct TYPE_5__* addresses; } ;
typedef TYPE_1__ pcap_if_t ;
typedef TYPE_1__ pcap_addr_t ;


 TYPE_1__* acn_if_list ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void acn_freealldevs(void) {

 pcap_if_t *iff, *next_iff;
 pcap_addr_t *addr, *next_addr;

 for (iff = acn_if_list; iff != ((void*)0); iff = next_iff) {
  next_iff = iff->next;
  for (addr = iff->addresses; addr != ((void*)0); addr = next_addr) {
   next_addr = addr->next;
   if (addr->addr) free(addr->addr);
   if (addr->netmask) free(addr->netmask);
   if (addr->broadaddr) free(addr->broadaddr);
   if (addr->dstaddr) free(addr->dstaddr);
   free(addr);
  }
  if (iff->name) free(iff->name);
  if (iff->description) free(iff->description);
  free(iff);
 }
}
