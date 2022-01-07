
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
typedef scalar_t__ time_t ;
typedef int ldns_rr_list ;
typedef int ldns_rr_class ;
typedef int ldns_rr ;
typedef int ldns_rdf ;
typedef int ldns_key ;


 scalar_t__ LDNS_DEFAULT_EXP_TIME ;
 int LDNS_RDF_TYPE_ALG ;
 int LDNS_RDF_TYPE_INT16 ;
 int LDNS_RDF_TYPE_INT32 ;
 int LDNS_RDF_TYPE_INT8 ;
 int LDNS_RDF_TYPE_TIME ;
 int LDNS_RDF_TYPE_TYPE ;
 int LDNS_RR_TYPE_RRSIG ;
 int ldns_dname2canonical (int *) ;
 scalar_t__ ldns_dname_is_wildcard (int ) ;
 int ldns_dname_label_count (int ) ;
 int ldns_key_algorithm (int const*) ;
 scalar_t__ ldns_key_expiration (int const*) ;
 scalar_t__ ldns_key_inception (int const*) ;
 int ldns_key_keytag (int const*) ;
 int ldns_key_pubkey_owner (int const*) ;
 int ldns_native2rdf_int16 (int ,int ) ;
 int ldns_native2rdf_int32 (int ,scalar_t__) ;
 int ldns_native2rdf_int8 (int ,int ) ;
 int * ldns_rdf_clone (int ) ;
 int ldns_rr_get_class (int ) ;
 int ldns_rr_get_type (int ) ;
 int ldns_rr_list_rr (int const*,int ) ;
 int * ldns_rr_new_frm_type (int ) ;
 int ldns_rr_owner (int ) ;
 int ldns_rr_rrsig_set_algorithm (int *,int ) ;
 int ldns_rr_rrsig_set_expiration (int *,int ) ;
 int ldns_rr_rrsig_set_inception (int *,int ) ;
 int ldns_rr_rrsig_set_keytag (int *,int ) ;
 int ldns_rr_rrsig_set_labels (int *,int ) ;
 int ldns_rr_rrsig_set_origttl (int *,int ) ;
 int ldns_rr_rrsig_set_signame (int *,int *) ;
 int ldns_rr_rrsig_set_typecovered (int *,int ) ;
 int ldns_rr_set_class (int *,int ) ;
 int ldns_rr_set_owner (int *,int *) ;
 int ldns_rr_set_ttl (int *,scalar_t__) ;
 scalar_t__ ldns_rr_ttl (int ) ;
 scalar_t__ time (int *) ;

ldns_rr *
ldns_create_empty_rrsig(const ldns_rr_list *rrset,
                        const ldns_key *current_key)
{
 uint32_t orig_ttl;
 ldns_rr_class orig_class;
 time_t now;
 ldns_rr *current_sig;
 uint8_t label_count;
 ldns_rdf *signame;

 label_count = ldns_dname_label_count(ldns_rr_owner(ldns_rr_list_rr(rrset,
                                                    0)));

        if(ldns_dname_is_wildcard(ldns_rr_owner(ldns_rr_list_rr(rrset, 0))))
                label_count --;

 current_sig = ldns_rr_new_frm_type(LDNS_RR_TYPE_RRSIG);


 orig_ttl = ldns_rr_ttl(ldns_rr_list_rr(rrset, 0));
 orig_class = ldns_rr_get_class(ldns_rr_list_rr(rrset, 0));

 ldns_rr_set_ttl(current_sig, orig_ttl);
 ldns_rr_set_class(current_sig, orig_class);
 ldns_rr_set_owner(current_sig,
     ldns_rdf_clone(
          ldns_rr_owner(
        ldns_rr_list_rr(rrset,
          0))));




 (void)ldns_rr_rrsig_set_origttl(
     current_sig,
     ldns_native2rdf_int32(LDNS_RDF_TYPE_INT32,
      orig_ttl));

 signame = ldns_rdf_clone(ldns_key_pubkey_owner(current_key));
 ldns_dname2canonical(signame);
 (void)ldns_rr_rrsig_set_signame(
   current_sig,
   signame);

 (void)ldns_rr_rrsig_set_labels(
   current_sig,
   ldns_native2rdf_int8(LDNS_RDF_TYPE_INT8,
                        label_count));

 now = time(((void*)0));
 if (ldns_key_inception(current_key) != 0) {
  (void)ldns_rr_rrsig_set_inception(
    current_sig,
    ldns_native2rdf_int32(
        LDNS_RDF_TYPE_TIME,
        ldns_key_inception(current_key)));
 } else {
  (void)ldns_rr_rrsig_set_inception(
    current_sig,
    ldns_native2rdf_int32(LDNS_RDF_TYPE_TIME, now));
 }
 if (ldns_key_expiration(current_key) != 0) {
  (void)ldns_rr_rrsig_set_expiration(
    current_sig,
    ldns_native2rdf_int32(
        LDNS_RDF_TYPE_TIME,
        ldns_key_expiration(current_key)));
 } else {
  (void)ldns_rr_rrsig_set_expiration(
        current_sig,
    ldns_native2rdf_int32(
        LDNS_RDF_TYPE_TIME,
        now + LDNS_DEFAULT_EXP_TIME));
 }

 (void)ldns_rr_rrsig_set_keytag(
     current_sig,
     ldns_native2rdf_int16(LDNS_RDF_TYPE_INT16,
                           ldns_key_keytag(current_key)));

 (void)ldns_rr_rrsig_set_algorithm(
   current_sig,
   ldns_native2rdf_int8(
       LDNS_RDF_TYPE_ALG,
       ldns_key_algorithm(current_key)));

 (void)ldns_rr_rrsig_set_typecovered(
   current_sig,
   ldns_native2rdf_int16(
       LDNS_RDF_TYPE_TYPE,
       ldns_rr_get_type(ldns_rr_list_rr(rrset,
                                        0))));
 return current_sig;
}
