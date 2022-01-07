
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int time_t ;
struct val_neg_zone {int* name; struct val_neg_zone* parent; int in_use; } ;
struct val_neg_cache {int lock; int num_neg_cache_nxdomain; int num_neg_cache_noerror; } ;
struct TYPE_6__ {int* dname; size_t dname_len; } ;
struct TYPE_5__ {int lock; scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_3__ rk; TYPE_2__ entry; } ;
struct rrset_cache {int dummy; } ;
struct regional {int dummy; } ;
struct query_info {scalar_t__ qtype; int* qname; size_t qname_len; int qclass; } ;
struct packed_rrset_data {scalar_t__ security; scalar_t__ rrsig_count; } ;
struct dns_msg {TYPE_1__* rep; } ;
struct config_file {int aggressive_nsec; } ;
typedef int sldns_buffer ;
struct TYPE_4__ {int flags; } ;


 int FLAGS_SET_RCODE (int ,int) ;
 int LDNS_MAX_DOMAINLEN ;
 int LDNS_RCODE_NOERROR ;
 int LDNS_RCODE_NXDOMAIN ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 int add_soa (struct rrset_cache*,int ,struct regional*,struct dns_msg*,struct val_neg_zone*) ;
 int dname_count_labels (int*) ;
 int dname_count_size_labels (int*,size_t*) ;
 int dname_remove_label (int**,size_t*) ;
 scalar_t__ dname_subdomain_c (int*,int*) ;
 int dns_msg_ansadd (struct dns_msg*,struct regional*,struct ub_packed_rrset_key*,int ) ;
 int dns_msg_authadd (struct dns_msg*,struct regional*,struct ub_packed_rrset_key*,int ) ;
 struct dns_msg* dns_msg_create (int*,size_t,scalar_t__,int ,struct regional*,int) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int lock_rw_unlock (int *) ;
 int log_assert (int) ;
 int memmove (int*,int*,size_t) ;
 struct val_neg_zone* neg_closest_zone_parent (struct val_neg_cache*,int*,size_t,int,int ) ;
 struct ub_packed_rrset_key* neg_find_nsec (struct val_neg_cache*,int*,size_t,int ,struct rrset_cache*,int ,struct regional*) ;
 struct dns_msg* neg_nsec3_proof_ds (struct val_neg_zone*,int*,size_t,int,int *,struct rrset_cache*,struct regional*,int ,int*) ;
 int* nsec_closest_encloser (int*,struct ub_packed_rrset_key*) ;
 scalar_t__ nsec_proves_nodata (struct ub_packed_rrset_key*,struct query_info*,int**) ;
 struct ub_packed_rrset_key* packed_rrset_copy_region (struct ub_packed_rrset_key*,struct regional*,int ) ;
 scalar_t__ query_dname_compare (int*,int*) ;
 struct ub_packed_rrset_key* rrset_cache_lookup (struct rrset_cache*,int*,size_t,scalar_t__,int ,int ,int ,int ) ;
 scalar_t__ sec_status_secure ;
 scalar_t__ sec_status_unchecked ;
 scalar_t__ val_nsec_proves_name_error (struct ub_packed_rrset_key*,int*) ;

struct dns_msg*
val_neg_getmsg(struct val_neg_cache* neg, struct query_info* qinfo,
 struct regional* region, struct rrset_cache* rrset_cache,
 sldns_buffer* buf, time_t now, int addsoa, uint8_t* topname,
 struct config_file* cfg)
{
 struct dns_msg* msg;
 struct ub_packed_rrset_key* nsec;
 struct ub_packed_rrset_key* wcrr;
 uint8_t* nodata_wc = ((void*)0);
 uint8_t* ce = ((void*)0);
 size_t ce_len;
 uint8_t wc_ce[LDNS_MAX_DOMAINLEN+3];
 struct query_info wc_qinfo;
 struct ub_packed_rrset_key* cache_wc;
 struct packed_rrset_data* wcrr_data;
 int rcode = LDNS_RCODE_NOERROR;
 uint8_t* zname;
 size_t zname_len;
 int zname_labs;
 struct val_neg_zone* zone;


 if(qinfo->qtype != LDNS_RR_TYPE_DS && !cfg->aggressive_nsec)
  return ((void*)0);
 log_assert(!topname || dname_subdomain_c(qinfo->qname, topname));


 nsec = neg_find_nsec(neg, qinfo->qname, qinfo->qname_len, qinfo->qclass,
  rrset_cache, now, region);



 if(nsec && nsec_proves_nodata(nsec, qinfo, &nodata_wc) && !nodata_wc) {
  if(!(msg = dns_msg_create(qinfo->qname, qinfo->qname_len,
   qinfo->qtype, qinfo->qclass, region, 2)))
   return ((void*)0);
  if(!dns_msg_authadd(msg, region, nsec, 0))
   return ((void*)0);
  if(addsoa && !add_soa(rrset_cache, now, region, msg, ((void*)0)))
   return ((void*)0);

  lock_basic_lock(&neg->lock);
  neg->num_neg_cache_noerror++;
  lock_basic_unlock(&neg->lock);
  return msg;
 } else if(nsec && val_nsec_proves_name_error(nsec, qinfo->qname)) {
  if(!(msg = dns_msg_create(qinfo->qname, qinfo->qname_len,
   qinfo->qtype, qinfo->qclass, region, 3)))
   return ((void*)0);
  if(!(ce = nsec_closest_encloser(qinfo->qname, nsec)))
   return ((void*)0);
  dname_count_size_labels(ce, &ce_len);



  if(!nodata_wc || query_dname_compare(nodata_wc, ce) != 0) {






   wc_ce[0] = 1;
   wc_ce[1] = (uint8_t)'*';
   memmove(wc_ce+2, ce, ce_len);
   wc_qinfo.qname = wc_ce;
   wc_qinfo.qname_len = ce_len + 2;
   wc_qinfo.qtype = qinfo->qtype;


   if((cache_wc = rrset_cache_lookup(rrset_cache, wc_qinfo.qname,
    wc_qinfo.qname_len, wc_qinfo.qtype,
    qinfo->qclass, 0 , now, 0 ))) {

    wcrr_data = (struct packed_rrset_data*)cache_wc->entry.data;
    if(!(wcrr_data->security == sec_status_secure ||
     (wcrr_data->security == sec_status_unchecked &&
     wcrr_data->rrsig_count > 0))) {
     lock_rw_unlock(&cache_wc->entry.lock);
     return ((void*)0);
    }
    if(!(wcrr = packed_rrset_copy_region(cache_wc,
     region, now))) {
     lock_rw_unlock(&cache_wc->entry.lock);
     return ((void*)0);
    };
    lock_rw_unlock(&cache_wc->entry.lock);
    wcrr->rk.dname = qinfo->qname;
    wcrr->rk.dname_len = qinfo->qname_len;
    if(!dns_msg_ansadd(msg, region, wcrr, 0))
     return ((void*)0);


    addsoa = 0;
   } else {


    if(!(wcrr = neg_find_nsec(neg, wc_qinfo.qname,
     wc_qinfo.qname_len, qinfo->qclass,
     rrset_cache, now, region)))
     return ((void*)0);

    nodata_wc = ((void*)0);
    if(val_nsec_proves_name_error(wcrr, wc_ce))
     rcode = LDNS_RCODE_NXDOMAIN;
    else if(!nsec_proves_nodata(wcrr, &wc_qinfo,
     &nodata_wc) || nodata_wc)




     return ((void*)0);
    if(query_dname_compare(wcrr->rk.dname,
     nsec->rk.dname) != 0)
     if(!dns_msg_authadd(msg, region, wcrr, 0))
      return ((void*)0);
   }
  }

  if(!dns_msg_authadd(msg, region, nsec, 0))
   return ((void*)0);
  if(addsoa && !add_soa(rrset_cache, now, region, msg, ((void*)0)))
   return ((void*)0);


  lock_basic_lock(&neg->lock);
  if(rcode == LDNS_RCODE_NOERROR)
   neg->num_neg_cache_noerror++;
  else if(rcode == LDNS_RCODE_NXDOMAIN)
   neg->num_neg_cache_nxdomain++;
  lock_basic_unlock(&neg->lock);

  FLAGS_SET_RCODE(msg->rep->flags, rcode);
  return msg;
 }


 if(qinfo->qtype != LDNS_RR_TYPE_DS){
  return ((void*)0);
 }


 zname = qinfo->qname;
 zname_len = qinfo->qname_len;
 dname_remove_label(&zname, &zname_len);
 zname_labs = dname_count_labels(zname);


 lock_basic_lock(&neg->lock);
 zone = neg_closest_zone_parent(neg, zname, zname_len, zname_labs,
  qinfo->qclass);
 while(zone && !zone->in_use)
  zone = zone->parent;


 if(zone && topname) {
  if(!dname_subdomain_c(zone->name, topname))
   zone = ((void*)0);
 }
 if(!zone) {
  lock_basic_unlock(&neg->lock);
  return ((void*)0);
 }

 msg = neg_nsec3_proof_ds(zone, qinfo->qname, qinfo->qname_len,
  zname_labs+1, buf, rrset_cache, region, now, topname);
 if(msg && addsoa && !add_soa(rrset_cache, now, region, msg, zone)) {
  lock_basic_unlock(&neg->lock);
  return ((void*)0);
 }
 lock_basic_unlock(&neg->lock);
 return msg;
}
