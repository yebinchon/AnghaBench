
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
typedef int ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_resolver ;
typedef int const ldns_rdf ;


 int LDNS_STATUS_CRYPTO_NO_TRUSTED_DNSKEY ;
 int LDNS_STATUS_CRYPTO_NO_TRUSTED_DS ;
 int LDNS_STATUS_OK ;
 int const* ldns_dname_left_chop (int const*) ;
 int ldns_rdf_deep_free (int const*) ;
 scalar_t__ ldns_rdf_size (int const*) ;
 int ldns_rr_list_deep_free (int *) ;
 int * ldns_validate_domain_dnskey_time (int const*,int const*,int const*,int ) ;
 int * ldns_validate_domain_ds_time (int const*,int const*,int *,int ) ;

ldns_rr_list *
ldns_fetch_valid_domain_keys_time(const ldns_resolver *res,
                             const ldns_rdf *domain,
                             const ldns_rr_list *keys,
        time_t check_time,
                             ldns_status *status)
{
 ldns_rr_list * trusted_keys = ((void*)0);
 ldns_rr_list * ds_keys = ((void*)0);
 ldns_rdf * prev_parent_domain;
 ldns_rdf * parent_domain;
 ldns_rr_list * parent_keys = ((void*)0);

 if (res && domain && keys) {

  if ((trusted_keys = ldns_validate_domain_dnskey_time(res,
                                         domain, keys, check_time))) {
   *status = LDNS_STATUS_OK;
  } else {

   *status = LDNS_STATUS_CRYPTO_NO_TRUSTED_DNSKEY;

   parent_domain = ldns_dname_left_chop(domain);
   while (parent_domain &&
     ldns_rdf_size(parent_domain) > 0) {

    if ((parent_keys =
     ldns_fetch_valid_domain_keys_time(res,
          parent_domain,
          keys,
          check_time,
          status))) {

     if ((ds_keys =
      ldns_validate_domain_ds_time(res,
           domain,
           parent_keys,
           check_time))) {
      trusted_keys =
      ldns_fetch_valid_domain_keys_time(
        res,
        domain,
        ds_keys,
        check_time,
        status);
      ldns_rr_list_deep_free(ds_keys);
     } else {

      *status = LDNS_STATUS_CRYPTO_NO_TRUSTED_DS ;
     }
     ldns_rr_list_deep_free(parent_keys);
     break;
    } else {
     parent_domain = ldns_dname_left_chop((
      prev_parent_domain
       = parent_domain
      ));
     ldns_rdf_deep_free(prev_parent_domain);
    }
   }
   if (parent_domain) {
    ldns_rdf_deep_free(parent_domain);
   }
  }
 }
 return trusted_keys;
}
