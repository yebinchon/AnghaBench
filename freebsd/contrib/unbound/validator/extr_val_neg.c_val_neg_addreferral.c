
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_5__ {scalar_t__ count; } ;
struct val_neg_zone {TYPE_2__ tree; int * name; } ;
struct val_neg_cache {int lock; } ;
struct reply_info {size_t an_numrrsets; size_t ns_numrrsets; TYPE_3__** rrsets; } ;
struct TYPE_4__ {int * dname; int type; } ;
struct TYPE_6__ {TYPE_1__ rk; } ;


 int LDNS_RR_TYPE_NS ;
 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 int VERB_ALGO ;
 size_t calc_data_need (struct reply_info*) ;
 size_t calc_zone_need (int *,size_t) ;
 int dname_subdomain_c (int *,int *) ;
 int lock_basic_lock (int *) ;
 int lock_basic_unlock (int *) ;
 int log_err (char*) ;
 int log_nametypeclass (int ,char*,int *,int ,int ) ;
 struct val_neg_zone* neg_create_zone (struct val_neg_cache*,int *,size_t,int ) ;
 int neg_delete_zone (struct val_neg_cache*,struct val_neg_zone*) ;
 struct val_neg_zone* neg_find_zone (struct val_neg_cache*,int *,size_t,int ) ;
 int neg_insert_data (struct val_neg_cache*,struct val_neg_zone*,TYPE_3__*) ;
 int neg_make_space (struct val_neg_cache*,size_t) ;
 scalar_t__ ntohs (int ) ;
 int * reply_nsec_signer (struct reply_info*,size_t*,int *) ;
 int val_neg_zone_take_inuse (struct val_neg_zone*) ;

void val_neg_addreferral(struct val_neg_cache* neg, struct reply_info* rep,
 uint8_t* zone_name)
{
 size_t i, need;
 uint8_t* signer;
 size_t signer_len;
 uint16_t dclass;
 struct val_neg_zone* zone;


 signer = reply_nsec_signer(rep, &signer_len, &dclass);
 if(!signer)
  return;
 if(!dname_subdomain_c(signer, zone_name)) {

  return;
 }

 log_nametypeclass(VERB_ALGO, "negcache insert referral ",
  signer, LDNS_RR_TYPE_NS, dclass);


 need = calc_data_need(rep) + calc_zone_need(signer, signer_len);
 lock_basic_lock(&neg->lock);
 neg_make_space(neg, need);


 zone = neg_find_zone(neg, signer, signer_len, dclass);
 if(!zone) {
  if(!(zone = neg_create_zone(neg, signer, signer_len,
   dclass))) {
   lock_basic_unlock(&neg->lock);
   log_err("out of memory adding negative zone");
   return;
  }
 }
 val_neg_zone_take_inuse(zone);


 for(i=rep->an_numrrsets; i< rep->an_numrrsets+rep->ns_numrrsets; i++){
  if(ntohs(rep->rrsets[i]->rk.type) != LDNS_RR_TYPE_NSEC &&
   ntohs(rep->rrsets[i]->rk.type) != LDNS_RR_TYPE_NSEC3)
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
