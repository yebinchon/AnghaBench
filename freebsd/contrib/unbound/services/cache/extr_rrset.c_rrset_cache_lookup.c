
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ time_t ;
struct TYPE_3__ {int hash; int * data; struct ub_packed_rrset_key* key; } ;
struct TYPE_4__ {size_t dname_len; int flags; void* rrset_class; void* type; int * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; TYPE_2__ rk; } ;
struct rrset_cache {int table; } ;
struct packed_rrset_data {scalar_t__ ttl; } ;
struct lruhash_entry {scalar_t__ key; int lock; scalar_t__ data; } ;


 void* htons (int ) ;
 int lock_rw_unlock (int *) ;
 int rrset_key_hash (TYPE_2__*) ;
 struct lruhash_entry* slabhash_lookup (int *,int ,struct ub_packed_rrset_key*,int) ;

struct ub_packed_rrset_key*
rrset_cache_lookup(struct rrset_cache* r, uint8_t* qname, size_t qnamelen,
 uint16_t qtype, uint16_t qclass, uint32_t flags, time_t timenow,
 int wr)
{
 struct lruhash_entry* e;
 struct ub_packed_rrset_key key;

 key.entry.key = &key;
 key.entry.data = ((void*)0);
 key.rk.dname = qname;
 key.rk.dname_len = qnamelen;
 key.rk.type = htons(qtype);
 key.rk.rrset_class = htons(qclass);
 key.rk.flags = flags;

 key.entry.hash = rrset_key_hash(&key.rk);

 if((e = slabhash_lookup(&r->table, key.entry.hash, &key, wr))) {

  struct packed_rrset_data* data =
   (struct packed_rrset_data*)e->data;
  if(timenow > data->ttl) {
   lock_rw_unlock(&e->lock);
   return ((void*)0);
  }

  return (struct ub_packed_rrset_key*)e->key;
 }
 return ((void*)0);
}
