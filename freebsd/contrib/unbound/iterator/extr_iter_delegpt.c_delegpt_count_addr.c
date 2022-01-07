
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delegpt_addr {struct delegpt_addr* next_usable; struct delegpt_addr* next_result; struct delegpt_addr* next_target; } ;
struct delegpt {struct delegpt_addr* usable_list; struct delegpt_addr* result_list; struct delegpt_addr* target_list; } ;



void
delegpt_count_addr(struct delegpt* dp, size_t* numaddr, size_t* numres,
 size_t* numavail)
{
 struct delegpt_addr* a;
 *numaddr = 0;
 *numres = 0;
 *numavail = 0;
 for(a = dp->target_list; a; a = a->next_target) {
  (*numaddr)++;
 }
 for(a = dp->result_list; a; a = a->next_result) {
  (*numres)++;
 }
 for(a = dp->usable_list; a; a = a->next_usable) {
  (*numavail)++;
 }
}
