
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef int time_t ;
struct TYPE_11__ {int lock; scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_5__ entry; } ;
struct reply_info {int security; scalar_t__ an_numrrsets; TYPE_2__** rrsets; int flags; } ;
struct regional {int dummy; } ;
struct query_info {size_t qname_len; scalar_t__ qtype; int * qname; int * local_alias; scalar_t__ qclass; } ;
struct packed_rrset_data {scalar_t__ trust; } ;
struct msgreply_entry {struct query_info key; } ;
struct module_env {int msg_cache; TYPE_6__* cfg; int rrset_cache; int * now; } ;
struct lruhash_entry {int lock; scalar_t__ data; scalar_t__ key; } ;
struct TYPE_9__ {size_t qname_len; int * qname; } ;
struct dns_msg {TYPE_4__* rep; TYPE_3__ qinfo; } ;
typedef int hashvalue_type ;
typedef enum sec_status { ____Placeholder_sec_status } sec_status ;
struct TYPE_12__ {scalar_t__ qname_minimisation; scalar_t__ harden_below_nxdomain; } ;
struct TYPE_10__ {void* security; } ;
struct TYPE_7__ {int type; } ;
struct TYPE_8__ {TYPE_1__ rk; } ;


 scalar_t__ FLAGS_GET_RCODE (int ) ;
 scalar_t__ LDNS_RCODE_NXDOMAIN ;
 scalar_t__ LDNS_RR_TYPE_A ;
 scalar_t__ LDNS_RR_TYPE_ANY ;
 scalar_t__ LDNS_RR_TYPE_CNAME ;
 scalar_t__ LDNS_RR_TYPE_DLV ;
 int LDNS_RR_TYPE_DNAME ;
 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 int dname_is_root (int *) ;
 int dname_remove_label (int **,size_t*) ;
 struct dns_msg* fill_any (struct module_env*,int *,size_t,scalar_t__,scalar_t__,struct regional*) ;
 struct ub_packed_rrset_key* find_closest_of_type (struct module_env*,int *,size_t,scalar_t__,int ,int ,int) ;
 int iter_scrub_nxdomain (struct dns_msg*) ;
 int lock_rw_unlock (int *) ;
 scalar_t__ ntohs (int ) ;
 int query_info_hash (struct query_info*,scalar_t__) ;
 struct ub_packed_rrset_key* rrset_cache_lookup (int ,int *,size_t,scalar_t__,scalar_t__,int ,int ,int ) ;
 struct dns_msg* rrset_msg (struct ub_packed_rrset_key*,struct regional*,int ,struct query_info*) ;
 scalar_t__ rrset_trust_add_AA ;
 scalar_t__ rrset_trust_add_noAA ;
 scalar_t__ rrset_trust_auth_AA ;
 scalar_t__ rrset_trust_auth_noAA ;
 int sec_status_secure ;
 void* sec_status_unchecked ;
 struct lruhash_entry* slabhash_lookup (int ,int ,struct query_info*,int ) ;
 struct dns_msg* synth_dname_msg (struct ub_packed_rrset_key*,struct regional*,int ,struct query_info*,int*) ;
 struct dns_msg* tomsg (struct module_env*,struct query_info*,struct reply_info*,struct regional*,int ,struct regional*) ;
 scalar_t__ val_rrset_wildcard (struct ub_packed_rrset_key*,int **,size_t*) ;

struct dns_msg*
dns_cache_lookup(struct module_env* env,
 uint8_t* qname, size_t qnamelen, uint16_t qtype, uint16_t qclass,
 uint16_t flags, struct regional* region, struct regional* scratch,
 int no_partial)
{
 struct lruhash_entry* e;
 struct query_info k;
 hashvalue_type h;
 time_t now = *env->now;
 struct ub_packed_rrset_key* rrset;


 k.qname = qname;
 k.qname_len = qnamelen;
 k.qtype = qtype;
 k.qclass = qclass;
 k.local_alias = ((void*)0);
 h = query_info_hash(&k, flags);
 e = slabhash_lookup(env->msg_cache, h, &k, 0);
 if(e) {
  struct msgreply_entry* key = (struct msgreply_entry*)e->key;
  struct reply_info* data = (struct reply_info*)e->data;
  struct dns_msg* msg = tomsg(env, &key->key, data, region, now,
   scratch);
  if(msg) {
   lock_rw_unlock(&e->lock);
   return msg;
  }

  lock_rw_unlock(&e->lock);
 }




 if(!no_partial &&
  (rrset=find_closest_of_type(env, qname, qnamelen, qclass, now,
  LDNS_RR_TYPE_DNAME, 1))) {

  enum sec_status sec_status = sec_status_unchecked;
  struct dns_msg* msg = synth_dname_msg(rrset, region, now, &k,
   &sec_status);
  if(msg) {
   struct ub_packed_rrset_key* cname_rrset;
   lock_rw_unlock(&rrset->entry.lock);





   if(sec_status == sec_status_secure)
    return msg;





   cname_rrset = rrset_cache_lookup(
    env->rrset_cache, qname, qnamelen,
    LDNS_RR_TYPE_CNAME, qclass, 0, now, 0);
   if(cname_rrset) {



    lock_rw_unlock(&cname_rrset->entry.lock);
    return msg;
   }
  } else {
   lock_rw_unlock(&rrset->entry.lock);
  }
 }



 if(!no_partial && qtype != LDNS_RR_TYPE_DS &&
    (rrset=rrset_cache_lookup(env->rrset_cache, qname, qnamelen,
  LDNS_RR_TYPE_CNAME, qclass, 0, now, 0))) {
  uint8_t* wc = ((void*)0);
  size_t wl;



  if(!(val_rrset_wildcard(rrset, &wc, &wl) && wc != ((void*)0))) {
   struct dns_msg* msg = rrset_msg(rrset, region, now, &k);
   if(msg) {
    lock_rw_unlock(&rrset->entry.lock);
    return msg;
   }
  }
  lock_rw_unlock(&rrset->entry.lock);
 }


 if((qtype == LDNS_RR_TYPE_DS || qtype == LDNS_RR_TYPE_DNSKEY ||
  qtype == LDNS_RR_TYPE_DLV) &&
  (rrset=rrset_cache_lookup(env->rrset_cache, qname, qnamelen,
  qtype, qclass, 0, now, 0))) {







  struct packed_rrset_data *d = (struct packed_rrset_data*)
   rrset->entry.data;
  if(d->trust != rrset_trust_add_noAA &&
   d->trust != rrset_trust_add_AA &&
   (qtype == LDNS_RR_TYPE_DS ||
    (d->trust != rrset_trust_auth_noAA
    && d->trust != rrset_trust_auth_AA) )) {
   struct dns_msg* msg = rrset_msg(rrset, region, now, &k);
   if(msg) {
    lock_rw_unlock(&rrset->entry.lock);
    return msg;
   }
  }
  lock_rw_unlock(&rrset->entry.lock);
 }





 if(env->cfg->harden_below_nxdomain)
     while(!dname_is_root(k.qname)) {
  dname_remove_label(&k.qname, &k.qname_len);
  h = query_info_hash(&k, flags);
  e = slabhash_lookup(env->msg_cache, h, &k, 0);
  if(!e && k.qtype != LDNS_RR_TYPE_A &&
   env->cfg->qname_minimisation) {
   k.qtype = LDNS_RR_TYPE_A;
   h = query_info_hash(&k, flags);
   e = slabhash_lookup(env->msg_cache, h, &k, 0);
  }
  if(e) {
   struct reply_info* data = (struct reply_info*)e->data;
   struct dns_msg* msg;
   if(FLAGS_GET_RCODE(data->flags) == LDNS_RCODE_NXDOMAIN
     && data->security == sec_status_secure
     && (data->an_numrrsets == 0 ||
    ntohs(data->rrsets[0]->rk.type) != LDNS_RR_TYPE_CNAME)
     && (msg=tomsg(env, &k, data, region, now, scratch))){
    lock_rw_unlock(&e->lock);
    msg->qinfo.qname=qname;
    msg->qinfo.qname_len=qnamelen;

    msg->rep->security = sec_status_unchecked;
    iter_scrub_nxdomain(msg);
    return msg;
   }
   lock_rw_unlock(&e->lock);
  }
  k.qtype = qtype;
     }


 if(qtype == LDNS_RR_TYPE_ANY) {
  return fill_any(env, qname, qnamelen, qtype, qclass, region);
 }

 return ((void*)0);
}
