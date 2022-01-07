
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct serviced_query {struct service_callback* cblist; } ;
struct service_callback {void* cb_arg; struct service_callback* next; } ;


 int free (struct service_callback*) ;

__attribute__((used)) static void
callback_list_remove(struct serviced_query* sq, void* cb_arg)
{
 struct service_callback** pp = &sq->cblist;
 while(*pp) {
  if((*pp)->cb_arg == cb_arg) {
   struct service_callback* del = *pp;
   *pp = del->next;
   free(del);
   return;
  }
  pp = &(*pp)->next;
 }
}
