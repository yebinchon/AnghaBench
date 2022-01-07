
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_master {int * list; struct auth_master* next; } ;


 int auth_free_master_addrs (int *) ;

__attribute__((used)) static void
xfr_masterlist_free_addrs(struct auth_master* list)
{
 struct auth_master* m;
 for(m=list; m; m=m->next) {
  if(m->list) {
   auth_free_master_addrs(m->list);
   m->list = ((void*)0);
  }
 }
}
