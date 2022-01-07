
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_resolver ;


 int * ldns_resolver_dnssec_anchors (int const*) ;
 scalar_t__ ldns_rr_list_contains_rr (int *,int *) ;
 int ldns_rr_list_push_rr (int *,int *) ;
 int * ldns_rr_list_rr (int *,size_t) ;
 size_t ldns_rr_list_rr_count (int *) ;

bool
ldns_resolver_trusted_key(const ldns_resolver *r, ldns_rr_list * keys, ldns_rr_list * trusted_keys)
{
  size_t i;
  bool result = 0;

  ldns_rr_list * trust_anchors;
  ldns_rr * cur_rr;

  if (!r || !keys) { return 0; }

  trust_anchors = ldns_resolver_dnssec_anchors(r);

  if (!trust_anchors) { return 0; }

  for (i = 0; i < ldns_rr_list_rr_count(keys); i++) {

    cur_rr = ldns_rr_list_rr(keys, i);
    if (ldns_rr_list_contains_rr(trust_anchors, cur_rr)) {
      if (trusted_keys) { ldns_rr_list_push_rr(trusted_keys, cur_rr); }
      result = 1;
    }
  }

  return result;
}
