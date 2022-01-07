
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ time_t ;
struct sockaddr_storage {int dummy; } ;
struct rtt_info {int dummy; } ;
struct lruhash_entry {int lock; scalar_t__ data; } ;
struct infra_data {scalar_t__ ttl; scalar_t__ probedelay; scalar_t__ timeout_other; scalar_t__ timeout_AAAA; scalar_t__ timeout_A; int rtt; } ;
struct infra_cache {int dummy; } ;
typedef int socklen_t ;


 struct lruhash_entry* infra_lookup_nottl (struct infra_cache*,struct sockaddr_storage*,int ,int *,size_t,int ) ;
 int lock_rw_unlock (int *) ;
 int memmove (struct rtt_info*,int *,int) ;

long long infra_get_host_rto(struct infra_cache* infra,
        struct sockaddr_storage* addr, socklen_t addrlen, uint8_t* nm,
 size_t nmlen, struct rtt_info* rtt, int* delay, time_t timenow,
 int* tA, int* tAAAA, int* tother)
{
 struct lruhash_entry* e = infra_lookup_nottl(infra, addr, addrlen,
  nm, nmlen, 0);
 struct infra_data* data;
 long long ttl = -2;
 if(!e) return -1;
 data = (struct infra_data*)e->data;
 if(data->ttl >= timenow) {
  ttl = (long long)(data->ttl - timenow);
  memmove(rtt, &data->rtt, sizeof(*rtt));
  if(timenow < data->probedelay)
   *delay = (int)(data->probedelay - timenow);
  else *delay = 0;
 }
 *tA = (int)data->timeout_A;
 *tAAAA = (int)data->timeout_AAAA;
 *tother = (int)data->timeout_other;
 lock_rw_unlock(&e->lock);
 return ttl;
}
