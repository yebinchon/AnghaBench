
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delegpt_addr {struct delegpt_addr* next_usable; struct delegpt_addr* next_result; } ;
struct delegpt {struct delegpt_addr* result_list; struct delegpt_addr* usable_list; } ;



void
delegpt_add_unused_targets(struct delegpt* dp)
{
 struct delegpt_addr* usa = dp->usable_list;
 dp->usable_list = ((void*)0);
 while(usa) {
  usa->next_result = dp->result_list;
  dp->result_list = usa;
  usa = usa->next_usable;
 }
}
