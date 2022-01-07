
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int time_t ;
struct lruhash_entry {int lock; int data; } ;
struct infra_cache {int dummy; } ;


 int infra_dp_ratelimit ;
 struct lruhash_entry* infra_find_ratedata (struct infra_cache*,int *,size_t,int ) ;
 int infra_find_ratelimit (struct infra_cache*,int *,size_t) ;
 int infra_rate_max (int ,int ) ;
 int lock_rw_unlock (int *) ;

int infra_ratelimit_exceeded(struct infra_cache* infra, uint8_t* name,
 size_t namelen, time_t timenow)
{
 struct lruhash_entry* entry;
 int lim, max;
 if(!infra_dp_ratelimit)
  return 0;


 lim = infra_find_ratelimit(infra, name, namelen);
 if(!lim)
  return 0;


 entry = infra_find_ratedata(infra, name, namelen, 0);
 if(!entry)
  return 0;
 max = infra_rate_max(entry->data, timenow);
 lock_rw_unlock(&entry->lock);

 return (max >= lim);
}
