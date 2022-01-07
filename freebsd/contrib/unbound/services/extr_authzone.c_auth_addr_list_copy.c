
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_addr {struct auth_addr* next; } ;


 int auth_free_master_addrs (struct auth_addr*) ;
 int log_err (char*) ;
 scalar_t__ memdup (struct auth_addr*,int) ;

__attribute__((used)) static struct auth_addr*
auth_addr_list_copy(struct auth_addr* source)
{
 struct auth_addr* list = ((void*)0), *last = ((void*)0);
 struct auth_addr* p;
 for(p=source; p; p=p->next) {
  struct auth_addr* a = (struct auth_addr*)memdup(p, sizeof(*p));
  if(!a) {
   log_err("malloc failure");
   auth_free_master_addrs(list);
   return ((void*)0);
  }
  a->next = ((void*)0);
  if(last) last->next = a;
  if(!list) list = a;
  last = a;
 }
 return list;
}
