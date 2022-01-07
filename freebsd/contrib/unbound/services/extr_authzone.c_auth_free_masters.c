
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_master {struct auth_master* file; struct auth_master* host; int list; struct auth_master* next; } ;


 int auth_free_master_addrs (int ) ;
 int free (struct auth_master*) ;

__attribute__((used)) static void
auth_free_masters(struct auth_master* list)
{
 struct auth_master* n;
 while(list) {
  n = list->next;
  auth_free_master_addrs(list->list);
  free(list->host);
  free(list->file);
  free(list);
  list = n;
 }
}
