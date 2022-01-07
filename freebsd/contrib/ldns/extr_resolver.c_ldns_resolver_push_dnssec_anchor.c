
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_resolver ;


 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 scalar_t__ LDNS_RR_TYPE_DS ;
 int LDNS_STATUS_ERR ;
 int LDNS_STATUS_OK ;
 int * ldns_resolver_dnssec_anchors (int *) ;
 int ldns_resolver_set_dnssec_anchors (int *,int *) ;
 int ldns_rr_clone (int *) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_list_new () ;
 scalar_t__ ldns_rr_list_push_rr (int *,int ) ;

ldns_status
ldns_resolver_push_dnssec_anchor(ldns_resolver *r, ldns_rr *rr)
{
  ldns_rr_list * trust_anchors;

  if ((!rr) || (ldns_rr_get_type(rr) != LDNS_RR_TYPE_DNSKEY &&
                ldns_rr_get_type(rr) != LDNS_RR_TYPE_DS)) {

    return LDNS_STATUS_ERR;
  }

  if (!(trust_anchors = ldns_resolver_dnssec_anchors(r))) {
    trust_anchors = ldns_rr_list_new();
    ldns_resolver_set_dnssec_anchors(r, trust_anchors);
  }

  return (ldns_rr_list_push_rr(trust_anchors, ldns_rr_clone(rr))) ? LDNS_STATUS_OK : LDNS_STATUS_ERR;
}
