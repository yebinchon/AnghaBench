
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delegpt_ns {scalar_t__ namelen; struct delegpt_ns* next; } ;
struct delegpt_addr {int dummy; } ;
struct delegpt {int namelen; struct delegpt_ns* nslist; } ;


 int delegpt_count_targets (struct delegpt*) ;

size_t delegpt_get_mem(struct delegpt* dp)
{
 struct delegpt_ns* ns;
 size_t s;
 if(!dp) return 0;
 s = sizeof(*dp) + dp->namelen +
  delegpt_count_targets(dp)*sizeof(struct delegpt_addr);
 for(ns=dp->nslist; ns; ns=ns->next)
  s += sizeof(*ns)+ns->namelen;
 return s;
}
