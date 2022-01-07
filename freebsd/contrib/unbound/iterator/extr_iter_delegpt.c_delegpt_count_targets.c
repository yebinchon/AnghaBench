
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delegpt_addr {struct delegpt_addr* next_target; } ;
struct delegpt {struct delegpt_addr* target_list; } ;



size_t
delegpt_count_targets(struct delegpt* dp)
{
 struct delegpt_addr* a;
 size_t n = 0;
 for(a = dp->target_list; a; a = a->next_target)
  n++;
 return n;
}
