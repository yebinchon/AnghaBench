
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef int uint16_t ;
typedef scalar_t__ time_t ;
struct val_neg_zone {int dclass; int * name; scalar_t__ nsec3_hash; struct val_neg_zone* parent; int in_use; } ;
struct val_neg_data {int len; int * name; struct val_neg_data* parent; int in_use; } ;
struct val_neg_cache {int lock; } ;
struct TYPE_2__ {int lock; scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_1__ entry; } ;
struct rrset_cache {int dummy; } ;
struct query_info {int * local_alias; int qclass; int qtype; int * qname; } ;
struct packed_rrset_data {scalar_t__ ttl; scalar_t__ security; } ;


 int LDNS_RR_TYPE_DLV ;
 int LDNS_RR_TYPE_NSEC ;
 scalar_t__ PACKED_RRSET_NSEC_AT_APEX ;
 int VERB_ALGO ;
 int dname_count_labels (int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int lock_rw_unlock (int *) ;
 int log_nametypeclass (int ,char*,int *,int ,int ) ;
 int neg_closest_data (struct val_neg_zone*,int *,size_t,int,struct val_neg_data**) ;
 struct val_neg_zone* neg_closest_zone_parent (struct val_neg_cache*,int *,size_t,int,int ) ;
 int neg_delete_data (struct val_neg_cache*,struct val_neg_data*) ;
 int neg_lru_touch (struct val_neg_cache*,struct val_neg_data*) ;
 int nsec_proves_nodata (struct ub_packed_rrset_key*,struct query_info*,int **) ;
 scalar_t__ query_dname_compare (int *,int *) ;
 struct ub_packed_rrset_key* rrset_cache_lookup (struct rrset_cache*,int *,int ,int ,int ,scalar_t__,scalar_t__,int ) ;
 scalar_t__ sec_status_secure ;
 int val_nsec_proves_name_error (struct ub_packed_rrset_key*,int *) ;
 int verbose (int ,char*) ;

int val_neg_dlvlookup(struct val_neg_cache* neg, uint8_t* qname, size_t len,
        uint16_t qclass, struct rrset_cache* rrset_cache, time_t now)
{

 struct val_neg_zone* zone;
 struct val_neg_data* data;
 int labs;
 struct ub_packed_rrset_key* nsec;
 struct packed_rrset_data* d;
 uint32_t flags;
 uint8_t* wc;
 struct query_info qinfo;
 if(!neg) return 0;

 log_nametypeclass(VERB_ALGO, "negcache dlvlookup", qname,
  LDNS_RR_TYPE_DLV, qclass);

 labs = dname_count_labels(qname);
 lock_basic_lock(&neg->lock);
 zone = neg_closest_zone_parent(neg, qname, len, labs, qclass);
 while(zone && !zone->in_use)
  zone = zone->parent;
 if(!zone) {
  lock_basic_unlock(&neg->lock);
  return 0;
 }
 log_nametypeclass(VERB_ALGO, "negcache zone", zone->name, 0,
  zone->dclass);


 if(zone->nsec3_hash) {
  lock_basic_unlock(&neg->lock);
  return 0;
 }


 (void)neg_closest_data(zone, qname, len, labs, &data);
 while(data && !data->in_use)
  data = data->parent;
 if(!data) {
  lock_basic_unlock(&neg->lock);
  return 0;
 }
 log_nametypeclass(VERB_ALGO, "negcache rr", data->name,
  LDNS_RR_TYPE_NSEC, zone->dclass);


 flags = 0;
 if(query_dname_compare(data->name, zone->name) == 0)
  flags = PACKED_RRSET_NSEC_AT_APEX;
 nsec = rrset_cache_lookup(rrset_cache, data->name, data->len,
  LDNS_RR_TYPE_NSEC, zone->dclass, flags, now, 0);


 if(!nsec) {
  lock_basic_unlock(&neg->lock);
  return 0;
 }
 d = (struct packed_rrset_data*)nsec->entry.data;
 if(!d || now > d->ttl) {
  lock_rw_unlock(&nsec->entry.lock);

  neg_delete_data(neg, data);
  lock_basic_unlock(&neg->lock);
  return 0;
 }
 if(d->security != sec_status_secure) {
  lock_rw_unlock(&nsec->entry.lock);
  neg_delete_data(neg, data);
  lock_basic_unlock(&neg->lock);
  return 0;
 }
 verbose(VERB_ALGO, "negcache got secure rrset");




 qinfo.qname = qname;
 qinfo.qtype = LDNS_RR_TYPE_DLV;
 qinfo.qclass = qclass;
 qinfo.local_alias = ((void*)0);
 if(!nsec_proves_nodata(nsec, &qinfo, &wc) &&
  !val_nsec_proves_name_error(nsec, qname)) {

  lock_rw_unlock(&nsec->entry.lock);
  lock_basic_unlock(&neg->lock);
  verbose(VERB_ALGO, "negcache not proven");
  return 0;
 }





 lock_rw_unlock(&nsec->entry.lock);

 neg_lru_touch(neg, data);
 lock_basic_unlock(&neg->lock);
 verbose(VERB_ALGO, "negcache DLV denial proven");
 return 1;
}
