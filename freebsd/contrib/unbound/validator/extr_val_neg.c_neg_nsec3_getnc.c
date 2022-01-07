
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int time_t ;
struct TYPE_2__ {scalar_t__ count; } ;
struct val_neg_zone {int dclass; TYPE_1__ tree; scalar_t__ labs; int len; int name; } ;
struct val_neg_data {int len; int name; struct val_neg_data* parent; int in_use; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct rrset_cache {int dummy; } ;
struct regional {int dummy; } ;


 int LDNS_RR_TYPE_NSEC3 ;
 struct ub_packed_rrset_key* grab_nsec (struct rrset_cache*,int ,int ,int ,int ,int ,struct regional*,int ,int ,int ) ;
 int neg_closest_data (struct val_neg_zone*,int *,size_t,scalar_t__,struct val_neg_data**) ;
 int neg_params_ok (struct val_neg_zone*,struct ub_packed_rrset_key*) ;
 size_t nsec3_hash_to_b32 (int *,size_t,int ,int ,int *,size_t) ;
 scalar_t__ rbtree_last (TYPE_1__*) ;

__attribute__((used)) static struct ub_packed_rrset_key*
neg_nsec3_getnc(struct val_neg_zone* zone, uint8_t* hashnc, size_t nclen,
 struct rrset_cache* rrset_cache, struct regional* region,
 time_t now, uint8_t* b32, size_t maxb32)
{
 struct ub_packed_rrset_key* nc_rrset;
 struct val_neg_data* data;
 size_t b32len;

 if(!(b32len=nsec3_hash_to_b32(hashnc, nclen, zone->name,
  zone->len, b32, maxb32)))
  return ((void*)0);
 (void)neg_closest_data(zone, b32, b32len, zone->labs+1, &data);
 if(!data && zone->tree.count != 0) {


  data = (struct val_neg_data*)rbtree_last(&zone->tree);
 }
 while(data && !data->in_use)
  data = data->parent;
 if(!data)
  return ((void*)0);

 nc_rrset = grab_nsec(rrset_cache, data->name, data->len,
  LDNS_RR_TYPE_NSEC3, zone->dclass, 0, region, 0, 0, now);
 if(!nc_rrset)
  return ((void*)0);
 if(!neg_params_ok(zone, nc_rrset))
  return ((void*)0);
 return nc_rrset;
}
