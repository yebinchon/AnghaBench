
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delegpt_addr {scalar_t__ attempts; struct delegpt_addr* next_usable; int addrlen; int addr; struct delegpt_addr* next_target; } ;
struct delegpt {struct delegpt_addr* usable_list; struct delegpt_addr* target_list; } ;


 scalar_t__ OUTBOUND_MSG_RETRY ;
 int VERB_ALGO ;
 struct delegpt_addr* delegpt_find_addr (struct delegpt*,int *,int ) ;
 int log_addr (int ,char*,int *,int ) ;

void iter_merge_retry_counts(struct delegpt* dp, struct delegpt* old)
{
 struct delegpt_addr* a, *o, *prev;
 for(a=dp->target_list; a; a = a->next_target) {
  o = delegpt_find_addr(old, &a->addr, a->addrlen);
  if(o) {
   log_addr(VERB_ALGO, "copy attempt count previous dp",
    &a->addr, a->addrlen);
   a->attempts = o->attempts;
  }
 }
 prev = ((void*)0);
 a = dp->usable_list;
 while(a) {
  if(a->attempts >= OUTBOUND_MSG_RETRY) {
   log_addr(VERB_ALGO, "remove from usable list dp",
    &a->addr, a->addrlen);

   if(prev)
    prev->next_usable = a->next_usable;
   else dp->usable_list = a->next_usable;

   a = a->next_usable;
   continue;
  }
  prev = a;
  a = a->next_usable;
 }
}
