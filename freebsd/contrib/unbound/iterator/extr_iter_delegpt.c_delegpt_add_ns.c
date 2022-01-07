
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct regional {int dummy; } ;
struct delegpt_ns {size_t namelen; scalar_t__ name; scalar_t__ done_pside6; scalar_t__ done_pside4; int lame; scalar_t__ got6; scalar_t__ got4; scalar_t__ resolved; struct delegpt_ns* next; } ;
struct delegpt {struct delegpt_ns* nslist; int dp_type_mlc; } ;


 scalar_t__ delegpt_find_ns (struct delegpt*,int *,size_t) ;
 int dname_count_size_labels (int *,size_t*) ;
 int log_assert (int) ;
 scalar_t__ regional_alloc (struct regional*,int) ;
 scalar_t__ regional_alloc_init (struct regional*,int *,size_t) ;

int
delegpt_add_ns(struct delegpt* dp, struct regional* region, uint8_t* name,
 uint8_t lame)
{
 struct delegpt_ns* ns;
 size_t len;
 (void)dname_count_size_labels(name, &len);
 log_assert(!dp->dp_type_mlc);


 if(delegpt_find_ns(dp, name, len))
  return 1;
 ns = (struct delegpt_ns*)regional_alloc(region,
  sizeof(struct delegpt_ns));
 if(!ns)
  return 0;
 ns->next = dp->nslist;
 ns->namelen = len;
 dp->nslist = ns;
 ns->name = regional_alloc_init(region, name, ns->namelen);
 ns->resolved = 0;
 ns->got4 = 0;
 ns->got6 = 0;
 ns->lame = lame;
 ns->done_pside4 = 0;
 ns->done_pside6 = 0;
 return ns->name != 0;
}
