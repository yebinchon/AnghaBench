
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct val_env {int dummy; } ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {scalar_t__ data; } ;
struct ub_packed_rrset_key {TYPE_2__ rk; TYPE_1__ entry; } ;
struct trust_anchor {int dummy; } ;
struct packed_rrset_data {size_t count; scalar_t__* rr_len; scalar_t__* rr_data; } ;
struct module_qstate {int dummy; } ;
struct module_env {int dummy; } ;
struct autr_ta {int revoked; int dname_len; int rr_len; int rr; } ;


 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 int VERB_ALGO ;
 int dnskey_calc_keytag (struct ub_packed_rrset_key*,size_t) ;
 int do_revoked (struct module_env*,struct autr_ta*,int*) ;
 int find_key (struct trust_anchor*,scalar_t__,scalar_t__,scalar_t__,struct autr_ta**) ;
 int log_assert (int) ;
 int log_err (char*) ;
 scalar_t__ ntohs (int ) ;
 int rr_is_dnskey_revoked (scalar_t__,scalar_t__,scalar_t__) ;
 int rr_is_dnskey_sep (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ rr_is_selfsigned_revoked (struct module_env*,struct val_env*,struct ub_packed_rrset_key*,size_t,struct module_qstate*) ;
 int seen_revoked_trustanchor (struct autr_ta*,int) ;
 int sldns_calc_keytag_raw (int ,int ) ;
 int sldns_wirerr_get_rdata (int ,int ,int ) ;
 int sldns_wirerr_get_rdatalen (int ,int ,int ) ;
 int verbose_key (struct autr_ta*,int ,char*) ;

__attribute__((used)) static void
check_contains_revoked(struct module_env* env, struct val_env* ve,
 struct trust_anchor* tp, struct ub_packed_rrset_key* dnskey_rrset,
 int* changed, struct module_qstate* qstate)
{
 struct packed_rrset_data* dd = (struct packed_rrset_data*)
  dnskey_rrset->entry.data;
 size_t i;
 log_assert(ntohs(dnskey_rrset->rk.type) == LDNS_RR_TYPE_DNSKEY);
 for(i=0; i<dd->count; i++) {
  struct autr_ta* ta = ((void*)0);
  if(!rr_is_dnskey_sep(ntohs(dnskey_rrset->rk.type),
   dd->rr_data[i]+2, dd->rr_len[i]-2) ||
   !rr_is_dnskey_revoked(ntohs(dnskey_rrset->rk.type),
   dd->rr_data[i]+2, dd->rr_len[i]-2))
   continue;
  if(!find_key(tp, ntohs(dnskey_rrset->rk.type),
   dd->rr_data[i]+2, dd->rr_len[i]-2, &ta)) {
   log_err("malloc failure");
   continue;
  }
  if(!ta)
   continue;
  if(rr_is_selfsigned_revoked(env, ve, dnskey_rrset, i, qstate)) {



   log_assert(dnskey_calc_keytag(dnskey_rrset, i)-128 ==
    sldns_calc_keytag_raw(sldns_wirerr_get_rdata(
    ta->rr, ta->rr_len, ta->dname_len),
    sldns_wirerr_get_rdatalen(ta->rr, ta->rr_len,
    ta->dname_len)) ||
    dnskey_calc_keytag(dnskey_rrset, i) ==
    sldns_calc_keytag_raw(sldns_wirerr_get_rdata(
    ta->rr, ta->rr_len, ta->dname_len),
    sldns_wirerr_get_rdatalen(ta->rr, ta->rr_len,
    ta->dname_len)));
   verbose_key(ta, VERB_ALGO, "is self-signed revoked");
   if(!ta->revoked)
    *changed = 1;
   seen_revoked_trustanchor(ta, 1);
   do_revoked(env, ta, changed);
  }
 }
}
