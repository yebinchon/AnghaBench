
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int time_t ;
typedef int ldns_rr_list ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int LDNS_RD ;
 int LDNS_RR_CLASS_IN ;
 int LDNS_RR_TYPE_DS ;
 int LDNS_RR_TYPE_RRSIG ;
 int LDNS_SECTION_ANSWER ;
 scalar_t__ LDNS_STATUS_OK ;
 int ldns_pkt_free (int *) ;
 int * ldns_pkt_rr_list_by_type (int *,int ,int ) ;
 int * ldns_resolver_query (int const*,int const*,int ,int ,int ) ;
 int ldns_rr_clone (int ) ;
 int ldns_rr_list_deep_free (int *) ;
 int * ldns_rr_list_new () ;
 int ldns_rr_list_push_rr (int *,int ) ;
 int ldns_rr_list_rr (int *,scalar_t__) ;
 scalar_t__ ldns_rr_list_rr_count (int *) ;
 scalar_t__ ldns_verify_time (int *,int *,int const*,int ,int *) ;

ldns_rr_list *
ldns_validate_domain_ds_time(
  const ldns_resolver *res,
  const ldns_rdf * domain,
  const ldns_rr_list * keys,
  time_t check_time)
{
 ldns_pkt * dspkt;
 uint16_t key_i;
 ldns_rr_list * rrset = ((void*)0);
 ldns_rr_list * sigs = ((void*)0);
 ldns_rr_list * trusted_keys = ((void*)0);


 dspkt = ldns_resolver_query(res, domain,
  LDNS_RR_TYPE_DS, LDNS_RR_CLASS_IN, LDNS_RD);
 if (dspkt) {
  rrset = ldns_pkt_rr_list_by_type(dspkt,
           LDNS_RR_TYPE_DS,
           LDNS_SECTION_ANSWER);
  sigs = ldns_pkt_rr_list_by_type(dspkt,
          LDNS_RR_TYPE_RRSIG,
          LDNS_SECTION_ANSWER);


  if (ldns_verify_time(rrset, sigs, keys, check_time, ((void*)0))
           == LDNS_STATUS_OK) {
   trusted_keys = ldns_rr_list_new();
   for (key_i=0; key_i<ldns_rr_list_rr_count(rrset); key_i++) {
    ldns_rr_list_push_rr(trusted_keys,
         ldns_rr_clone(ldns_rr_list_rr(rrset,
               key_i)
           )
         );
   }
  }

  ldns_rr_list_deep_free(rrset);
  ldns_rr_list_deep_free(sigs);
  ldns_pkt_free(dspkt);

 } else {

 }

 return trusted_keys;
}
