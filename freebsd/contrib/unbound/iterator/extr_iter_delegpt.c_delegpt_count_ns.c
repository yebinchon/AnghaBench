
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delegpt_ns {int resolved; struct delegpt_ns* next; } ;
struct delegpt {struct delegpt_ns* nslist; } ;



void
delegpt_count_ns(struct delegpt* dp, size_t* numns, size_t* missing)
{
 struct delegpt_ns* ns;
 *numns = 0;
 *missing = 0;
 for(ns = dp->nslist; ns; ns = ns->next) {
  (*numns)++;
  if(!ns->resolved)
   (*missing)++;
 }
}
