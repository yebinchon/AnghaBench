
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int time_t ;
struct sockaddr_storage {int dummy; } ;
struct lruhash_entry {int lock; scalar_t__ data; int hash; } ;
struct infra_data {int isdnsseclame; int rec_lame; int lame_type_A; int lame_other; int ttl; } ;
struct infra_cache {int hosts; } ;
typedef int socklen_t ;


 scalar_t__ LDNS_RR_TYPE_A ;
 int data_entry_init (struct infra_cache*,struct lruhash_entry*,int ) ;
 struct lruhash_entry* infra_lookup_nottl (struct infra_cache*,struct sockaddr_storage*,int ,int *,size_t,int) ;
 int lock_rw_unlock (int *) ;
 int log_err (char*) ;
 struct lruhash_entry* new_entry (struct infra_cache*,struct sockaddr_storage*,int ,int *,size_t,int ) ;
 int slabhash_insert (int ,int ,struct lruhash_entry*,scalar_t__,int *) ;

int
infra_set_lame(struct infra_cache* infra, struct sockaddr_storage* addr,
 socklen_t addrlen, uint8_t* nm, size_t nmlen, time_t timenow,
 int dnsseclame, int reclame, uint16_t qtype)
{
 struct infra_data* data;
 struct lruhash_entry* e;
 int needtoinsert = 0;
 e = infra_lookup_nottl(infra, addr, addrlen, nm, nmlen, 1);
 if(!e) {

  if(!(e = new_entry(infra, addr, addrlen, nm, nmlen, timenow))) {
   log_err("set_lame: malloc failure");
   return 0;
  }
  needtoinsert = 1;
 } else if( ((struct infra_data*)e->data)->ttl < timenow) {

  data_entry_init(infra, e, timenow);
 }

 data = (struct infra_data*)e->data;

 if(dnsseclame)
  data->isdnsseclame = 1;
 if(reclame)
  data->rec_lame = 1;
 if(!dnsseclame && !reclame && qtype == LDNS_RR_TYPE_A)
  data->lame_type_A = 1;
 if(!dnsseclame && !reclame && qtype != LDNS_RR_TYPE_A)
  data->lame_other = 1;

 if(needtoinsert)
  slabhash_insert(infra->hosts, e->hash, e, e->data, ((void*)0));
 else { lock_rw_unlock(&e->lock); }
 return 1;
}
