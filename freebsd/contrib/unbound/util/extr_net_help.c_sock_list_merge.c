
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock_list {int len; int addr; struct sock_list* next; } ;
struct regional {int dummy; } ;


 int sock_list_find (struct sock_list*,int *,int ) ;
 int sock_list_insert (struct sock_list**,int *,int ,struct regional*) ;

void sock_list_merge(struct sock_list** list, struct regional* region,
 struct sock_list* add)
{
 struct sock_list* p;
 for(p=add; p; p=p->next) {
  if(!sock_list_find(*list, &p->addr, p->len))
   sock_list_insert(list, &p->addr, p->len, region);
 }
}
