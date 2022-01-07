
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int time_t ;
typedef int const ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_resolver ;
typedef int ldns_rdf ;
typedef int ldns_pkt ;


 int LDNS_RD ;
 int LDNS_RR_CLASS_IN ;
 int LDNS_RR_TYPE_DNSKEY ;
 int LDNS_RR_TYPE_RRSIG ;
 int LDNS_SECTION_ANSWER ;
 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ldns_calc_keytag (int *) ;
 int ldns_pkt_free (int *) ;
 int const* ldns_pkt_rr_list_by_type (int *,int ,int ) ;
 scalar_t__ ldns_rdf2native_int16 (int ) ;
 int * ldns_resolver_query (int const*,int const*,int ,int ,int ) ;
 int ldns_rr_clone (int *) ;
 scalar_t__ ldns_rr_compare_ds (int *,int *) ;
 int ldns_rr_list_deep_free (int const*) ;
 int const* ldns_rr_list_new () ;
 int ldns_rr_list_push_rr (int const*,int ) ;
 int * ldns_rr_list_rr (int const*,scalar_t__) ;
 scalar_t__ ldns_rr_list_rr_count (int const*) ;
 int ldns_rr_rrsig_keytag (int *) ;
 scalar_t__ ldns_verify_rrsig_time (int const*,int *,int *,int ) ;

ldns_rr_list *
ldns_validate_domain_dnskey_time(
  const ldns_resolver * res,
  const ldns_rdf * domain,
  const ldns_rr_list * keys,
  time_t check_time
  )
{
 ldns_pkt * keypkt;
 ldns_rr * cur_key;
 uint16_t key_i; uint16_t key_j; uint16_t key_k;
 uint16_t sig_i; ldns_rr * cur_sig;

 ldns_rr_list * domain_keys = ((void*)0);
 ldns_rr_list * domain_sigs = ((void*)0);
 ldns_rr_list * trusted_keys = ((void*)0);


 keypkt = ldns_resolver_query(res, domain,
  LDNS_RR_TYPE_DNSKEY, LDNS_RR_CLASS_IN, LDNS_RD);
 if (keypkt) {
  domain_keys = ldns_pkt_rr_list_by_type(keypkt,
             LDNS_RR_TYPE_DNSKEY,
             LDNS_SECTION_ANSWER);
  domain_sigs = ldns_pkt_rr_list_by_type(keypkt,
             LDNS_RR_TYPE_RRSIG,
             LDNS_SECTION_ANSWER);


  for (key_i=0; key_i< ldns_rr_list_rr_count(domain_keys); key_i++) {

   cur_key = ldns_rr_list_rr(domain_keys, key_i);
   for (key_j=0; key_j<ldns_rr_list_rr_count(keys); key_j++) {
    if (ldns_rr_compare_ds(ldns_rr_list_rr(keys, key_j),
           cur_key)) {


     trusted_keys = ldns_rr_list_new();

     for (sig_i=0;
      sig_i<ldns_rr_list_rr_count(domain_sigs);
      sig_i++) {
      cur_sig = ldns_rr_list_rr(domain_sigs, sig_i);

      if (ldns_rdf2native_int16(
          ldns_rr_rrsig_keytag(cur_sig))
          == ldns_calc_keytag(cur_key)) {
       if (ldns_verify_rrsig_time(
         domain_keys,
         cur_sig,
         cur_key,
         check_time)
           == LDNS_STATUS_OK) {



        for (key_k=0;
         key_k<ldns_rr_list_rr_count(
           domain_keys);
         key_k++) {
         ldns_rr_list_push_rr(
             trusted_keys,
             ldns_rr_clone(
             ldns_rr_list_rr(
             domain_keys,
             key_k)));
        }

        ldns_rr_list_deep_free(domain_keys);
        ldns_rr_list_deep_free(domain_sigs);
        ldns_pkt_free(keypkt);
        return trusted_keys;
       }
      }
     }


     ldns_rr_list_push_rr(trusted_keys,
          ldns_rr_clone(cur_key));
    }
   }
  }

  ldns_rr_list_deep_free(domain_keys);
  ldns_rr_list_deep_free(domain_sigs);
  ldns_pkt_free(keypkt);

 } else {

 }

 return trusted_keys;
}
