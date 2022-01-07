
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct auth_xfer {struct auth_master* allow_notify_list; TYPE_1__* task_probe; } ;
struct auth_master {struct auth_master* next; } ;
struct TYPE_2__ {struct auth_master* masters; } ;


 int auth_free_masters (struct auth_master*) ;
 struct auth_master* auth_master_copy (struct auth_master*) ;

__attribute__((used)) static void
probe_copy_masters_for_allow_notify(struct auth_xfer* xfr)
{
 struct auth_master* list = ((void*)0), *last = ((void*)0);
 struct auth_master* p;

 for(p = xfr->task_probe->masters; p; p=p->next) {
  struct auth_master* m = auth_master_copy(p);
  if(!m) {
   auth_free_masters(list);

   return;
  }
  m->next = ((void*)0);
  if(last) last->next = m;
  if(!list) list = m;
  last = m;
 }

 auth_free_masters(xfr->allow_notify_list);
 xfr->allow_notify_list = list;
}
