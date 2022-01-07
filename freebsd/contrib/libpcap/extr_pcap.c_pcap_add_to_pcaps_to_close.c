
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ pcap_t ;


 TYPE_1__* pcaps_to_close ;

void
pcap_add_to_pcaps_to_close(pcap_t *p)
{
 p->next = pcaps_to_close;
 pcaps_to_close = p;
}
