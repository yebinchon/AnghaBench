
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
typedef int time_t ;
struct TYPE_4__ {struct packed_rrset_data* data; int hash; struct ub_packed_rrset_key* key; } ;
struct TYPE_3__ {int dname_len; int dname; scalar_t__ flags; void* rrset_class; void* type; } ;
struct ub_packed_rrset_key {TYPE_2__ entry; TYPE_1__ rk; } ;
struct reply_info {scalar_t__ rrset_count; struct ub_packed_rrset_key** rrsets; } ;
struct query_info {int qname_len; int qname; int qclass; int qtype; } ;
struct packed_rrset_data {int count; size_t* rr_len; int * rr_data; int ttl; int * rr_ttl; int trust; scalar_t__ rrsig_count; } ;
struct module_env {int scratch; } ;


 int NORR_TTL ;
 int VERB_ALGO ;
 void* htons (int ) ;
 int iter_store_parentside_rrset (struct module_env*,struct ub_packed_rrset_key*) ;
 int log_err (char*) ;
 int log_rrset_key (int ,char*,struct ub_packed_rrset_key*) ;
 int memset (TYPE_2__*,int ,int) ;
 int packed_rrset_ptr_fixup (struct packed_rrset_data*) ;
 scalar_t__ regional_alloc (int ,int) ;
 int regional_alloc_init (int ,int ,int ) ;
 scalar_t__ regional_alloc_zero (int ,int) ;
 struct ub_packed_rrset_key* reply_get_NS_rrset (struct reply_info*) ;
 int rrset_key_hash (TYPE_1__*) ;
 int rrset_trust_ans_noAA ;
 int sldns_write_uint16 (int ,int ) ;
 int ub_packed_rrset_ttl (struct ub_packed_rrset_key*) ;

void iter_store_parentside_neg(struct module_env* env,
        struct query_info* qinfo, struct reply_info* rep)
{



 time_t ttl = NORR_TTL;
 struct ub_packed_rrset_key* neg;
 struct packed_rrset_data* newd;
 if(rep) {
  struct ub_packed_rrset_key* rrset = reply_get_NS_rrset(rep);
  if(!rrset && rep->rrset_count != 0) rrset = rep->rrsets[0];
  if(rrset) ttl = ub_packed_rrset_ttl(rrset);
 }

 neg = (struct ub_packed_rrset_key*)regional_alloc(env->scratch,
                 sizeof(struct ub_packed_rrset_key));
 if(!neg) {
  log_err("out of memory in store_parentside_neg");
  return;
 }
 memset(&neg->entry, 0, sizeof(neg->entry));
 neg->entry.key = neg;
 neg->rk.type = htons(qinfo->qtype);
 neg->rk.rrset_class = htons(qinfo->qclass);
 neg->rk.flags = 0;
 neg->rk.dname = regional_alloc_init(env->scratch, qinfo->qname,
  qinfo->qname_len);
 if(!neg->rk.dname) {
  log_err("out of memory in store_parentside_neg");
  return;
 }
 neg->rk.dname_len = qinfo->qname_len;
 neg->entry.hash = rrset_key_hash(&neg->rk);
 newd = (struct packed_rrset_data*)regional_alloc_zero(env->scratch,
  sizeof(struct packed_rrset_data) + sizeof(size_t) +
  sizeof(uint8_t*) + sizeof(time_t) + sizeof(uint16_t));
 if(!newd) {
  log_err("out of memory in store_parentside_neg");
  return;
 }
 neg->entry.data = newd;
 newd->ttl = ttl;


 newd->count = 1;
 newd->rrsig_count = 0;
 newd->trust = rrset_trust_ans_noAA;
 newd->rr_len = (size_t*)((uint8_t*)newd +
  sizeof(struct packed_rrset_data));
 newd->rr_len[0] = 0 + sizeof(uint16_t);
 packed_rrset_ptr_fixup(newd);
 newd->rr_ttl[0] = newd->ttl;
 sldns_write_uint16(newd->rr_data[0], 0 );

 log_rrset_key(VERB_ALGO, "store parent-side negative", neg);
 iter_store_parentside_rrset(env, neg);
}
