
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 int ldns_dname_cat (int *,int *) ;
 scalar_t__ ldns_dname_label_count (int *) ;
 int * ldns_dname_left_chop (int *) ;
 int ldns_rdf2native_int32 (int ) ;
 scalar_t__ ldns_rdf2native_int8 (int ) ;
 int * ldns_rdf_clone (int *) ;
 int ldns_rdf_deep_free (int *) ;
 int ldns_rr2canonical (int ) ;
 int ldns_rr_list_rr (int *,scalar_t__) ;
 scalar_t__ ldns_rr_list_rr_count (int *) ;
 int * ldns_rr_owner (int ) ;
 int ldns_rr_rd_count (int const*) ;
 int ldns_rr_rdf (int const*,int) ;
 int ldns_rr_set_owner (int ,int *) ;
 int ldns_rr_set_ttl (int ,int ) ;
 int ldns_str2rdf_dname (int **,char*) ;

__attribute__((used)) static void
ldns_rrset_use_signature_ttl(ldns_rr_list* rrset_clone, const ldns_rr* rrsig)
{
 uint32_t orig_ttl;
 uint16_t i;
 uint8_t label_count;
 ldns_rdf *wildcard_name;
 ldns_rdf *wildcard_chopped;
 ldns_rdf *wildcard_chopped_tmp;

 if ((rrsig == ((void*)0)) || ldns_rr_rd_count(rrsig) < 4) {
  return;
 }

 orig_ttl = ldns_rdf2native_int32( ldns_rr_rdf(rrsig, 3));
 label_count = ldns_rdf2native_int8(ldns_rr_rdf(rrsig, 2));

 for(i = 0; i < ldns_rr_list_rr_count(rrset_clone); i++) {
  if (label_count <
      ldns_dname_label_count(
      ldns_rr_owner(ldns_rr_list_rr(rrset_clone, i)))) {
   (void) ldns_str2rdf_dname(&wildcard_name, "*");
   wildcard_chopped = ldns_rdf_clone(ldns_rr_owner(
    ldns_rr_list_rr(rrset_clone, i)));
   while (label_count < ldns_dname_label_count(wildcard_chopped)) {
    wildcard_chopped_tmp = ldns_dname_left_chop(
     wildcard_chopped);
    ldns_rdf_deep_free(wildcard_chopped);
    wildcard_chopped = wildcard_chopped_tmp;
   }
   (void) ldns_dname_cat(wildcard_name, wildcard_chopped);
   ldns_rdf_deep_free(wildcard_chopped);
   ldns_rdf_deep_free(ldns_rr_owner(ldns_rr_list_rr(
    rrset_clone, i)));
   ldns_rr_set_owner(ldns_rr_list_rr(rrset_clone, i),
    wildcard_name);
  }
  ldns_rr_set_ttl(ldns_rr_list_rr(rrset_clone, i), orig_ttl);

  ldns_rr2canonical(ldns_rr_list_rr(rrset_clone, i));
 }
}
