
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int time_t ;
struct sockaddr_storage {int dummy; } ;
struct lruhash_entry {int lock; scalar_t__ data; int hash; } ;
struct infra_data {int edns_version; int edns_lame_known; int ttl; } ;
struct infra_cache {int hosts; } ;
typedef int socklen_t ;


 int data_entry_init (struct infra_cache*,struct lruhash_entry*,int ) ;
 struct lruhash_entry* infra_lookup_nottl (struct infra_cache*,struct sockaddr_storage*,int ,int *,size_t,int) ;
 int lock_rw_unlock (int *) ;
 struct lruhash_entry* new_entry (struct infra_cache*,struct sockaddr_storage*,int ,int *,size_t,int ) ;
 int slabhash_insert (int ,int ,struct lruhash_entry*,scalar_t__,int *) ;

int
infra_edns_update(struct infra_cache* infra, struct sockaddr_storage* addr,
 socklen_t addrlen, uint8_t* nm, size_t nmlen, int edns_version,
 time_t timenow)
{
 struct lruhash_entry* e = infra_lookup_nottl(infra, addr, addrlen,
  nm, nmlen, 1);
 struct infra_data* data;
 int needtoinsert = 0;
 if(!e) {
  if(!(e = new_entry(infra, addr, addrlen, nm, nmlen, timenow)))
   return 0;
  needtoinsert = 1;
 } else if(((struct infra_data*)e->data)->ttl < timenow) {
  data_entry_init(infra, e, timenow);
 }

 data = (struct infra_data*)e->data;

 if(!(edns_version == -1 && (data->edns_version != -1 &&
  data->edns_lame_known))) {
  data->edns_version = edns_version;
  data->edns_lame_known = 1;
 }

 if(needtoinsert)
  slabhash_insert(infra->hosts, e->hash, e, e->data, ((void*)0));
 else { lock_rw_unlock(&e->lock); }
 return 1;
}
