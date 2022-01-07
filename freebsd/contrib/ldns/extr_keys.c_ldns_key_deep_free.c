
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char ldns_key ;


 int EVP_PKEY_free (scalar_t__) ;
 int LDNS_FREE (unsigned char*) ;
 scalar_t__ ldns_key_evp_key (unsigned char*) ;
 unsigned char* ldns_key_hmac_key (unsigned char*) ;
 scalar_t__ ldns_key_pubkey_owner (unsigned char*) ;
 int ldns_rdf_deep_free (scalar_t__) ;

void
ldns_key_deep_free(ldns_key *key)
{
 unsigned char* hmac;
 if (ldns_key_pubkey_owner(key)) {
  ldns_rdf_deep_free(ldns_key_pubkey_owner(key));
 }





 if (ldns_key_hmac_key(key)) {
  hmac = ldns_key_hmac_key(key);
  LDNS_FREE(hmac);
 }
 LDNS_FREE(key);
}
