
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr ;
typedef int FILE ;


 scalar_t__ LDNS_RR_TYPE_DNSKEY ;
 int fprintf (int *,char*,...) ;
 scalar_t__ ldns_calc_keytag (int *) ;
 int ldns_rdf2native_int16 (int ) ;
 int ldns_rdf_print (int *,int ) ;
 scalar_t__ ldns_rr_dnskey_key_size (int *) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int ldns_rr_owner (int *) ;
 int ldns_rr_rdf (int *,int) ;
 scalar_t__ ldns_rr_ttl (int *) ;
 int print_class_type (int *,int *) ;

void
print_dnskey_abbr(FILE *fp, ldns_rr *key)
{
        if (!key || (ldns_rr_get_type(key) != LDNS_RR_TYPE_DNSKEY)) {
                return;
        }

        ldns_rdf_print(fp, ldns_rr_owner(key));
        fprintf(fp, " %d", (int)ldns_rr_ttl(key));
 print_class_type(fp, key);



        ldns_rdf_print(fp, ldns_rr_rdf(key, 0)); fprintf(fp, " ");

        ldns_rdf_print(fp, ldns_rr_rdf(key, 1)); fprintf(fp, " ");

        ldns_rdf_print(fp, ldns_rr_rdf(key, 2));

 if (ldns_rdf2native_int16(ldns_rr_rdf(key, 0)) == 256) {
  fprintf(fp, " ;{id = %u (zsk), size = %db}", (unsigned int)ldns_calc_keytag(key),
    (int)ldns_rr_dnskey_key_size(key));
  return;
 }
 if (ldns_rdf2native_int16(ldns_rr_rdf(key, 0)) == 257) {
  fprintf(fp, " ;{id = %u (ksk), size = %db}", (unsigned int)ldns_calc_keytag(key),
    (int)ldns_rr_dnskey_key_size(key));
  return;
 }
 fprintf(fp, " ;{id = %u, size = %db}", (unsigned int)ldns_calc_keytag(key),
   (int)ldns_rr_dnskey_key_size(key));
}
