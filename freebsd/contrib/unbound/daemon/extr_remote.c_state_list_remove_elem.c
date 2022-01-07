
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rc_state {struct rc_state* next; struct comm_point* c; } ;
struct comm_point {int dummy; } ;



__attribute__((used)) static void
state_list_remove_elem(struct rc_state** list, struct comm_point* c)
{
 while(*list) {
  if( (*list)->c == c) {
   *list = (*list)->next;
   return;
  }
  list = &(*list)->next;
 }
}
