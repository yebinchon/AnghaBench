
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct delegpt_ns {int resolved; scalar_t__ got6; struct delegpt_ns* next; } ;
struct delegpt {struct delegpt_ns* nslist; } ;



void delegpt_no_ipv4(struct delegpt* dp)
{
 struct delegpt_ns* ns;
 for(ns = dp->nslist; ns; ns = ns->next) {

  if(ns->got6)
   ns->resolved = 1;
 }
}
