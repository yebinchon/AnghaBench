
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct listen_list {int com; struct listen_list* next; } ;


 int comm_point_delete (int ) ;
 int free (struct listen_list*) ;

void
listen_list_delete(struct listen_list* list)
{
 struct listen_list *p = list, *pn;
 while(p) {
  pn = p->next;
  comm_point_delete(p->com);
  free(p);
  p = pn;
 }
}
