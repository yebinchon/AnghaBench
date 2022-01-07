
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delegpt_ns {int resolved; struct delegpt_ns* next; } ;
struct delegpt {struct delegpt_ns* nslist; } ;



size_t
delegpt_count_missing_targets(struct delegpt* dp)
{
 struct delegpt_ns* ns;
 size_t n = 0;
 for(ns = dp->nslist; ns; ns = ns->next)
  if(!ns->resolved)
   n++;
 return n;
}
