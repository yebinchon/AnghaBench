
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct sockaddr_storage {int dummy; } ;
struct lruhash_entry {int lock; scalar_t__ data; } ;
struct TYPE_2__ {scalar_t__ rto; } ;
struct infra_data {TYPE_1__ rtt; } ;
struct infra_cache {int dummy; } ;
typedef int socklen_t ;


 scalar_t__ RTT_MAX_TIMEOUT ;
 struct lruhash_entry* infra_lookup_nottl (struct infra_cache*,struct sockaddr_storage*,int ,int *,size_t,int) ;
 int lock_rw_unlock (int *) ;

void
infra_update_tcp_works(struct infra_cache* infra,
        struct sockaddr_storage* addr, socklen_t addrlen, uint8_t* nm,
 size_t nmlen)
{
 struct lruhash_entry* e = infra_lookup_nottl(infra, addr, addrlen,
  nm, nmlen, 1);
 struct infra_data* data;
 if(!e)
  return;
 data = (struct infra_data*)e->data;
 if(data->rtt.rto >= RTT_MAX_TIMEOUT)


  data->rtt.rto = RTT_MAX_TIMEOUT-1000;
 lock_rw_unlock(&e->lock);
}
