
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct outbound_list {TYPE_2__* first; } ;
struct outbound_entry {TYPE_2__* next; TYPE_1__* prev; int qsent; } ;
struct TYPE_4__ {TYPE_1__* prev; } ;
struct TYPE_3__ {TYPE_2__* next; } ;


 int outnet_serviced_query_stop (int ,struct outbound_entry*) ;

void
outbound_list_remove(struct outbound_list* list, struct outbound_entry* e)
{
 if(!e)
  return;
 outnet_serviced_query_stop(e->qsent, e);
 if(e->next)
  e->next->prev = e->prev;
 if(e->prev)
  e->prev->next = e->next;
 else list->first = e->next;

}
