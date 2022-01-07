
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct delegpt_ns {size_t namelen; scalar_t__ done_pside6; scalar_t__ done_pside4; scalar_t__ lame; scalar_t__ got6; scalar_t__ got4; scalar_t__ resolved; struct delegpt_ns* next; int name; } ;
struct delegpt {struct delegpt_ns* nslist; int dp_type_mlc; } ;


 scalar_t__ delegpt_find_ns (struct delegpt*,scalar_t__*,size_t) ;
 int dname_count_size_labels (scalar_t__*,size_t*) ;
 int free (struct delegpt_ns*) ;
 int log_assert (int ) ;
 scalar_t__ malloc (int) ;
 int memdup (scalar_t__*,size_t) ;

int delegpt_add_ns_mlc(struct delegpt* dp, uint8_t* name, uint8_t lame)
{
 struct delegpt_ns* ns;
 size_t len;
 (void)dname_count_size_labels(name, &len);
 log_assert(dp->dp_type_mlc);


 if(delegpt_find_ns(dp, name, len))
  return 1;
 ns = (struct delegpt_ns*)malloc(sizeof(struct delegpt_ns));
 if(!ns)
  return 0;
 ns->namelen = len;
 ns->name = memdup(name, ns->namelen);
 if(!ns->name) {
  free(ns);
  return 0;
 }
 ns->next = dp->nslist;
 dp->nslist = ns;
 ns->resolved = 0;
 ns->got4 = 0;
 ns->got6 = 0;
 ns->lame = (uint8_t)lame;
 ns->done_pside4 = 0;
 ns->done_pside6 = 0;
 return 1;
}
