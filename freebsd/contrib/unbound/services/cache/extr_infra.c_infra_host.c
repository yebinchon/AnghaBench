
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* uint8_t ;
typedef scalar_t__ time_t ;
struct sockaddr_storage {int dummy; } ;
struct lruhash_entry {int lock; scalar_t__ data; int hash; } ;
struct TYPE_3__ {int rto; } ;
struct infra_data {scalar_t__ ttl; int edns_version; scalar_t__ probedelay; TYPE_1__ rtt; void* edns_lame_known; void* timeout_other; void* timeout_AAAA; void* timeout_A; } ;
struct infra_cache {int hosts; } ;
typedef int socklen_t ;


 int PROBE_MAXRTO ;
 int USEFUL_SERVER_TOP_TIMEOUT ;
 int data_entry_init (struct infra_cache*,struct lruhash_entry*,scalar_t__) ;
 struct lruhash_entry* infra_lookup_nottl (struct infra_cache*,struct sockaddr_storage*,int ,void**,size_t,int) ;
 int lock_rw_unlock (int *) ;
 struct lruhash_entry* new_entry (struct infra_cache*,struct sockaddr_storage*,int ,void**,size_t,scalar_t__) ;
 int rtt_notimeout (TYPE_1__*) ;
 int rtt_timeout (TYPE_1__*) ;
 int slabhash_insert (int ,int ,struct lruhash_entry*,struct infra_data*,int *) ;

int
infra_host(struct infra_cache* infra, struct sockaddr_storage* addr,
        socklen_t addrlen, uint8_t* nm, size_t nmlen, time_t timenow,
 int* edns_vs, uint8_t* edns_lame_known, int* to)
{
 struct lruhash_entry* e = infra_lookup_nottl(infra, addr, addrlen,
  nm, nmlen, 0);
 struct infra_data* data;
 int wr = 0;
 if(e && ((struct infra_data*)e->data)->ttl < timenow) {

  int old = ((struct infra_data*)e->data)->rtt.rto;
  uint8_t tA = ((struct infra_data*)e->data)->timeout_A;
  uint8_t tAAAA = ((struct infra_data*)e->data)->timeout_AAAA;
  uint8_t tother = ((struct infra_data*)e->data)->timeout_other;
  lock_rw_unlock(&e->lock);
  e = infra_lookup_nottl(infra, addr, addrlen, nm, nmlen, 1);
  if(e) {



   data_entry_init(infra, e, timenow);
   wr = 1;

   if(old >= USEFUL_SERVER_TOP_TIMEOUT) {
    ((struct infra_data*)e->data)->rtt.rto
     = USEFUL_SERVER_TOP_TIMEOUT;
    ((struct infra_data*)e->data)->timeout_A = tA;
    ((struct infra_data*)e->data)->timeout_AAAA = tAAAA;
    ((struct infra_data*)e->data)->timeout_other = tother;
   }
  }
 }
 if(!e) {

  if(!(e = new_entry(infra, addr, addrlen, nm, nmlen, timenow)))
   return 0;
  data = (struct infra_data*)e->data;
  *edns_vs = data->edns_version;
  *edns_lame_known = data->edns_lame_known;
  *to = rtt_timeout(&data->rtt);
  slabhash_insert(infra->hosts, e->hash, e, data, ((void*)0));
  return 1;
 }

 data = (struct infra_data*)e->data;
 *edns_vs = data->edns_version;
 *edns_lame_known = data->edns_lame_known;
 *to = rtt_timeout(&data->rtt);
 if(*to >= PROBE_MAXRTO && rtt_notimeout(&data->rtt)*4 <= *to) {

  if(!wr) {
   lock_rw_unlock(&e->lock);
   e = infra_lookup_nottl(infra, addr,addrlen,nm,nmlen, 1);
   if(!e) {

    return 1;
   }
   data = (struct infra_data*)e->data;
  }



  data->probedelay = timenow + ((*to)+1999)/1000;
 }
 lock_rw_unlock(&e->lock);
 return 1;
}
