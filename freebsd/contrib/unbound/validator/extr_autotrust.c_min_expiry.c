
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct packed_rrset_data {size_t count; size_t rrsig_count; int * rr_len; int * rr_data; } ;
struct module_env {scalar_t__* now; } ;
typedef scalar_t__ int32_t ;


 scalar_t__ rrsig_get_expiry (int ,int ) ;

__attribute__((used)) static time_t
min_expiry(struct module_env* env, struct packed_rrset_data* dd)
{
 size_t i;
 int32_t t, r = 15 * 24 * 3600;
 for(i=dd->count; i<dd->count+dd->rrsig_count; i++) {
  t = rrsig_get_expiry(dd->rr_data[i], dd->rr_len[i]);
  if((int32_t)t - (int32_t)*env->now > 0) {
   t -= (int32_t)*env->now;
   if(t < r)
    r = t;
  }
 }
 return (time_t)r;
}
