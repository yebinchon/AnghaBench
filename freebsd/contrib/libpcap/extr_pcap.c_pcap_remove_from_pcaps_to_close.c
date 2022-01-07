
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ pcap_t ;


 TYPE_1__* pcaps_to_close ;

void
pcap_remove_from_pcaps_to_close(pcap_t *p)
{
 pcap_t *pc, *prevpc;

 for (pc = pcaps_to_close, prevpc = ((void*)0); pc != ((void*)0);
     prevpc = pc, pc = pc->next) {
  if (pc == p) {



   if (prevpc == ((void*)0)) {



    pcaps_to_close = pc->next;
   } else {



    prevpc->next = pc->next;
   }
   break;
  }
 }
}
