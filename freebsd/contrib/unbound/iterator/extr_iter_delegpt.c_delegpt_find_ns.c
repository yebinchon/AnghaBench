
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct delegpt_ns {size_t namelen; struct delegpt_ns* next; int name; } ;
struct delegpt {struct delegpt_ns* nslist; } ;


 scalar_t__ query_dname_compare (int *,int ) ;

struct delegpt_ns*
delegpt_find_ns(struct delegpt* dp, uint8_t* name, size_t namelen)
{
 struct delegpt_ns* p = dp->nslist;
 while(p) {
  if(namelen == p->namelen &&
   query_dname_compare(name, p->name) == 0) {
   return p;
  }
  p = p->next;
 }
 return ((void*)0);
}
