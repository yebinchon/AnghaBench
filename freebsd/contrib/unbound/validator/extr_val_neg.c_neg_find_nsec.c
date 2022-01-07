
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef int time_t ;
struct val_neg_zone {int dclass; int name; scalar_t__ nsec3_hash; struct val_neg_zone* parent; int in_use; } ;
struct val_neg_data {int len; int name; int in_use; } ;
struct val_neg_cache {int lock; } ;
struct ub_packed_rrset_key {int dummy; } ;
struct rrset_cache {int dummy; } ;
struct regional {int dummy; } ;
typedef int rbnode_type ;


 int LDNS_RR_TYPE_NSEC ;
 scalar_t__ PACKED_RRSET_NSEC_AT_APEX ;
 int * RBTREE_NULL ;
 int dname_count_labels (int *) ;
 struct ub_packed_rrset_key* grab_nsec (struct rrset_cache*,int ,int ,int ,int ,scalar_t__,struct regional*,int ,int ,int ) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int neg_closest_data (struct val_neg_zone*,int *,size_t,int,struct val_neg_data**) ;
 struct val_neg_zone* neg_closest_zone_parent (struct val_neg_cache*,int *,size_t,int,int ) ;
 scalar_t__ query_dname_compare (int ,int ) ;
 scalar_t__ rbtree_previous (int *) ;

__attribute__((used)) static struct ub_packed_rrset_key*
neg_find_nsec(struct val_neg_cache* neg_cache, uint8_t* qname, size_t qname_len,
 uint16_t qclass, struct rrset_cache* rrset_cache, time_t now,
 struct regional* region)
{
 int labs;
 uint32_t flags;
 struct val_neg_zone* zone;
 struct val_neg_data* data;
 struct ub_packed_rrset_key* nsec;

 labs = dname_count_labels(qname);
 lock_basic_lock(&neg_cache->lock);
 zone = neg_closest_zone_parent(neg_cache, qname, qname_len, labs,
  qclass);
 while(zone && !zone->in_use)
  zone = zone->parent;
 if(!zone) {
  lock_basic_unlock(&neg_cache->lock);
  return ((void*)0);
 }


 if(zone->nsec3_hash) {
  lock_basic_unlock(&neg_cache->lock);
  return ((void*)0);
 }


 (void)neg_closest_data(zone, qname, qname_len, labs, &data);
 if(!data) {
  lock_basic_unlock(&neg_cache->lock);
  return ((void*)0);
 }



 if(!data->in_use) {
  data = (struct val_neg_data*)rbtree_previous((rbnode_type*)data);
  if((rbnode_type*)data == RBTREE_NULL || !data->in_use) {
   lock_basic_unlock(&neg_cache->lock);
   return ((void*)0);
  }
 }

 flags = 0;
 if(query_dname_compare(data->name, zone->name) == 0)
  flags = PACKED_RRSET_NSEC_AT_APEX;

 nsec = grab_nsec(rrset_cache, data->name, data->len, LDNS_RR_TYPE_NSEC,
  zone->dclass, flags, region, 0, 0, now);
 lock_basic_unlock(&neg_cache->lock);
 return nsec;
}
