
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_addr {struct auth_addr* next; } ;


 int free (struct auth_addr*) ;

__attribute__((used)) static void
auth_free_master_addrs(struct auth_addr* list)
{
 struct auth_addr *n;
 while(list) {
  n = list->next;
  free(list);
  list = n;
 }
}
