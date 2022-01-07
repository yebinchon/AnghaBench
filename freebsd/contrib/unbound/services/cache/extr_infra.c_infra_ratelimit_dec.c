
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int time_t ;
struct lruhash_entry {int lock; int data; } ;
struct infra_cache {int dummy; } ;


 int infra_dp_ratelimit ;
 struct lruhash_entry* infra_find_ratedata (struct infra_cache*,int *,size_t,int) ;
 int* infra_rate_find_second (int ,int ) ;
 int lock_rw_unlock (int *) ;

void infra_ratelimit_dec(struct infra_cache* infra, uint8_t* name,
 size_t namelen, time_t timenow)
{
 struct lruhash_entry* entry;
 int* cur;
 if(!infra_dp_ratelimit)
  return;
 entry = infra_find_ratedata(infra, name, namelen, 1);
 if(!entry) return;
 cur = infra_rate_find_second(entry->data, timenow);
 if((*cur) > 0)
  (*cur)--;
 lock_rw_unlock(&entry->lock);
}
