
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_pkt ;


 int LDNS_RR_TYPE_DNSKEY ;
 int LDNS_SECTION_ANSWER ;
 int LDNS_SHA1 ;
 int LDNS_SHA256 ;
 int fprintf (int ,char*,unsigned int) ;
 scalar_t__ ldns_calc_keytag (int ) ;
 int * ldns_key_rr2ds (int ,int ) ;
 int * ldns_pkt_rr_list_by_type (int *,int ,int ) ;
 int ldns_rr_list_deep_free (int *) ;
 int ldns_rr_list_rr (int *,scalar_t__) ;
 scalar_t__ ldns_rr_list_rr_count (int *) ;
 int local_print_ds (int ,char*,int *) ;
 int stdout ;

void
print_ds_of_keys(ldns_pkt *p)
{
 ldns_rr_list *keys;
 uint16_t i;
 ldns_rr *ds;


 keys = ldns_pkt_rr_list_by_type(p, LDNS_RR_TYPE_DNSKEY,
   LDNS_SECTION_ANSWER);




 if (keys) {
  for (i = 0; i < ldns_rr_list_rr_count(keys); i++) {
   fprintf(stdout, ";\n; equivalent DS records for key %u:\n",
    (unsigned int)ldns_calc_keytag(ldns_rr_list_rr(keys, i)));

   ds = ldns_key_rr2ds(ldns_rr_list_rr(keys, i), LDNS_SHA1);
   local_print_ds(stdout, "; sha1: ", ds);
   ds = ldns_key_rr2ds(ldns_rr_list_rr(keys, i), LDNS_SHA256);
   local_print_ds(stdout, "; sha256: ", ds);
  }
  ldns_rr_list_deep_free(keys);
 }
}
