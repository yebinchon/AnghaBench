
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_4__ {struct packed_rrset_data* data; struct ub_packed_rrset_key* key; int hash; } ;
struct TYPE_3__ {size_t dname_len; struct packed_rrset_data* dname; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; int id; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {size_t count; size_t rrsig_count; scalar_t__* rr_ttl; scalar_t__ ttl; } ;


 int memset (TYPE_2__*,int ,int) ;
 int packed_rrset_ptr_fixup (struct packed_rrset_data*) ;
 size_t packed_rrset_sizeof (struct packed_rrset_data*) ;
 struct ub_packed_rrset_key* regional_alloc (struct regional*,int) ;
 struct packed_rrset_data* regional_alloc_init (struct regional*,struct packed_rrset_data*,size_t) ;

struct ub_packed_rrset_key*
packed_rrset_copy_region(struct ub_packed_rrset_key* key,
 struct regional* region, time_t now)
{
 struct ub_packed_rrset_key* ck = regional_alloc(region,
  sizeof(struct ub_packed_rrset_key));
 struct packed_rrset_data* d;
 struct packed_rrset_data* data = (struct packed_rrset_data*)
  key->entry.data;
 size_t dsize, i;
 if(!ck)
  return ((void*)0);
 ck->id = key->id;
 memset(&ck->entry, 0, sizeof(ck->entry));
 ck->entry.hash = key->entry.hash;
 ck->entry.key = ck;
 ck->rk = key->rk;
 ck->rk.dname = regional_alloc_init(region, key->rk.dname,
  key->rk.dname_len);
 if(!ck->rk.dname)
  return ((void*)0);
 dsize = packed_rrset_sizeof(data);
 d = (struct packed_rrset_data*)regional_alloc_init(region, data, dsize);
 if(!d)
  return ((void*)0);
 ck->entry.data = d;
 packed_rrset_ptr_fixup(d);

 for(i=0; i<d->count + d->rrsig_count; i++) {
  if(d->rr_ttl[i] < now)
   d->rr_ttl[i] = 0;
  else d->rr_ttl[i] -= now;
 }
 if(d->ttl < now)
  d->ttl = 0;
 else d->ttl -= now;
 return ck;
}
