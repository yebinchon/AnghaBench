
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_master {scalar_t__ host; int allow_notify; struct auth_master* next; } ;



__attribute__((used)) static int
have_probe_targets(struct auth_master* list)
{
 struct auth_master* p;
 for(p=list; p; p = p->next) {
  if(!p->allow_notify && p->host)
   return 1;
 }
 return 0;
}
