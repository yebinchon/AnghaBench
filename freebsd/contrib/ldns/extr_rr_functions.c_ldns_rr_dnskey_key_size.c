
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;


 int ldns_rdf2native_int8 (int ) ;
 scalar_t__ ldns_rdf_data (int ) ;
 int ldns_rdf_size (int ) ;
 int ldns_rr_dnskey_algorithm (int const*) ;
 int ldns_rr_dnskey_key (int const*) ;
 size_t ldns_rr_dnskey_key_size_raw (unsigned char*,int ,int ) ;

size_t
ldns_rr_dnskey_key_size(const ldns_rr *key)
{
 if (!key || !ldns_rr_dnskey_key(key)
   || !ldns_rr_dnskey_algorithm(key)) {
  return 0;
 }
 return ldns_rr_dnskey_key_size_raw((unsigned char*)ldns_rdf_data(ldns_rr_dnskey_key(key)),
                                    ldns_rdf_size(ldns_rr_dnskey_key(key)),
                                    ldns_rdf2native_int8(ldns_rr_dnskey_algorithm(key))
                                   );
}
