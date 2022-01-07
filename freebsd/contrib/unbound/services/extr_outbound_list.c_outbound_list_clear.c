
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct outbound_list {struct outbound_entry* first; } ;
struct outbound_entry {int qsent; struct outbound_entry* next; } ;


 int outbound_list_init (struct outbound_list*) ;
 int outnet_serviced_query_stop (int ,struct outbound_entry*) ;

void
outbound_list_clear(struct outbound_list* list)
{
 struct outbound_entry *p, *np;
 p = list->first;
 while(p) {
  np = p->next;
  outnet_serviced_query_stop(p->qsent, p);

  p = np;
 }
 outbound_list_init(list);
}
