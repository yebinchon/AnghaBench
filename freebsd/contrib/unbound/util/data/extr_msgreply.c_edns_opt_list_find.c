
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
struct edns_option {scalar_t__ opt_code; struct edns_option* next; } ;



struct edns_option* edns_opt_list_find(struct edns_option* list, uint16_t code)
{
 struct edns_option* p;
 for(p=list; p; p=p->next) {
  if(p->opt_code == code)
   return p;
 }
 return ((void*)0);
}
