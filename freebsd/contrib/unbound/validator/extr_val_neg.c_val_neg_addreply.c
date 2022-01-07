
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_7__ {scalar_t__ count; } ;
struct val_neg_zone {TYPE_3__ tree; int name; } ;
struct val_neg_cache {int lock; } ;
struct TYPE_5__ {size_t dname_len; int rrset_class; int * dname; } ;
struct ub_packed_rrset_key {TYPE_1__ rk; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; TYPE_4__** rrsets; } ;
struct TYPE_6__ {int dname; int type; } ;
struct TYPE_8__ {TYPE_2__ rk; } ;


 scalar_t__ LDNS_RR_TYPE_NSEC ;
 int LDNS_RR_TYPE_SOA ;
 int VERB_ALGO ;
 size_t calc_data_need (struct reply_info*) ;
 size_t calc_zone_need (int *,size_t) ;
 int dname_subdomain_c (int ,int ) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_err (char*) ;
 int log_nametypeclass (int ,char*,int *,int ,scalar_t__) ;
 struct val_neg_zone* neg_create_zone (struct val_neg_cache*,int *,size_t,scalar_t__) ;
 int neg_delete_zone (struct val_neg_cache*,struct val_neg_zone*) ;
 struct val_neg_zone* neg_find_zone (struct val_neg_cache*,int *,size_t,scalar_t__) ;
 int neg_insert_data (struct val_neg_cache*,struct val_neg_zone*,TYPE_4__*) ;
 int neg_make_space (struct val_neg_cache*,size_t) ;
 scalar_t__ ntohs (int ) ;
 struct ub_packed_rrset_key* reply_find_soa (struct reply_info*) ;
 int reply_has_nsec (struct reply_info*) ;
 int * reply_nsec_signer (struct reply_info*,size_t*,scalar_t__*) ;
 int val_neg_zone_take_inuse (struct val_neg_zone*) ;

void val_neg_addreply(struct val_neg_cache* neg, struct reply_info* rep)
{
 size_t i, need;
 struct ub_packed_rrset_key* soa;
 uint8_t* dname = ((void*)0);
 size_t dname_len;
 uint16_t rrset_class;
 struct val_neg_zone* zone;

 if(!reply_has_nsec(rep))
  return;

 if((soa = reply_find_soa(rep))) {
  dname = soa->rk.dname;
  dname_len = soa->rk.dname_len;
  rrset_class = ntohs(soa->rk.rrset_class);
 }
 else {


  if(!(dname = reply_nsec_signer(rep, &dname_len, &rrset_class)))
   return;
 }

 log_nametypeclass(VERB_ALGO, "negcache insert for zone",
  dname, LDNS_RR_TYPE_SOA, rrset_class);


 need = calc_data_need(rep) +
  calc_zone_need(dname, dname_len);
 lock_basic_lock(&neg->lock);
 neg_make_space(neg, need);


 zone = neg_find_zone(neg, dname, dname_len, rrset_class);
 if(!zone) {
  if(!(zone = neg_create_zone(neg, dname, dname_len,
   rrset_class))) {
   lock_basic_unlock(&neg->lock);
   log_err("out of memory adding negative zone");
   return;
  }
 }
 val_neg_zone_take_inuse(zone);


 for(i=rep->an_numrrsets; i< rep->an_numrrsets+rep->ns_numrrsets; i++){
  if(ntohs(rep->rrsets[i]->rk.type) != LDNS_RR_TYPE_NSEC)
   continue;
  if(!dname_subdomain_c(rep->rrsets[i]->rk.dname,
   zone->name)) continue;

  neg_insert_data(neg, zone, rep->rrsets[i]);
 }
 if(zone->tree.count == 0) {

  neg_delete_zone(neg, zone);
 }
 lock_basic_unlock(&neg->lock);
}
