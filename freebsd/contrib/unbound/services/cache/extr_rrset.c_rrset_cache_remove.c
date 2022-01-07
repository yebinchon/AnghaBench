
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_3__ {int hash; struct ub_packed_rrset_key* key; } ;
struct TYPE_4__ {size_t dname_len; int flags; void* type; void* rrset_class; int * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; TYPE_2__ rk; } ;
struct rrset_cache {int table; } ;


 void* htons (int ) ;
 int rrset_key_hash (TYPE_2__*) ;
 int slabhash_remove (int *,int ,struct ub_packed_rrset_key*) ;

void rrset_cache_remove(struct rrset_cache* r, uint8_t* nm, size_t nmlen,
 uint16_t type, uint16_t dclass, uint32_t flags)
{
 struct ub_packed_rrset_key key;
 key.entry.key = &key;
 key.rk.dname = nm;
 key.rk.dname_len = nmlen;
 key.rk.rrset_class = htons(dclass);
 key.rk.type = htons(type);
 key.rk.flags = flags;
 key.entry.hash = rrset_key_hash(&key.rk);
 slabhash_remove(&r->table, key.entry.hash, &key);
}
