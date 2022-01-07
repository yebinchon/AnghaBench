
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct edns_option {scalar_t__ opt_code; struct edns_option* next; } ;



int edns_opt_list_remove(struct edns_option** list, uint16_t code)
{




 struct edns_option* prev;
 struct edns_option* curr;
 if(!list || !(*list)) return 0;


 while(list && *list && (*list)->opt_code == code) {
  *list = (*list)->next;
 }

 if(!list || !(*list)) return 1;

 prev = *list;
 curr = (*list)->next;
 while(curr != ((void*)0)) {
  if(curr->opt_code == code) {
   prev->next = curr->next;
   curr = curr->next;
  } else {
   prev = curr;
   curr = curr->next;
  }
 }
 return 1;
}
