
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef scalar_t__ time_t ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct regional {int dummy; } ;
struct packed_rrset_data {scalar_t__ ttl; } ;
struct key_entry_key {int dummy; } ;
struct key_entry_data {struct packed_rrset_data* rrset_data; int * algo; int rrset_type; int * reason; scalar_t__ isbad; scalar_t__ ttl; } ;


 int key_entry_setup (struct regional*,int *,size_t,int ,struct key_entry_key**,struct key_entry_data**) ;
 int ntohs (int ) ;
 int packed_rrset_ptr_fixup (struct packed_rrset_data*) ;
 int packed_rrset_sizeof (struct packed_rrset_data*) ;
 scalar_t__ regional_alloc_init (struct regional*,struct packed_rrset_data*,int ) ;
 scalar_t__ regional_strdup (struct regional*,char*) ;

struct key_entry_key*
key_entry_create_rrset(struct regional* region,
 uint8_t* name, size_t namelen, uint16_t dclass,
 struct ub_packed_rrset_key* rrset, uint8_t* sigalg, time_t now)
{
 struct key_entry_key* k;
 struct key_entry_data* d;
 struct packed_rrset_data* rd = (struct packed_rrset_data*)
  rrset->entry.data;
 if(!key_entry_setup(region, name, namelen, dclass, &k, &d))
  return ((void*)0);
 d->ttl = rd->ttl + now;
 d->isbad = 0;
 d->reason = ((void*)0);
 d->rrset_type = ntohs(rrset->rk.type);
 d->rrset_data = (struct packed_rrset_data*)regional_alloc_init(region,
  rd, packed_rrset_sizeof(rd));
 if(!d->rrset_data)
  return ((void*)0);
 if(sigalg) {
  d->algo = (uint8_t*)regional_strdup(region, (char*)sigalg);
  if(!d->algo)
   return ((void*)0);
 } else d->algo = ((void*)0);
 packed_rrset_ptr_fixup(d->rrset_data);
 return k;
}
