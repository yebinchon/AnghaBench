
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED ;
 scalar_t__ LDNS_STATUS_DNSSEC_NSEC_WILDCARD_NOT_COVERED ;
 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ldns_dname_cat (int *,int *) ;
 scalar_t__ ldns_dname_compare (int *,int *) ;
 scalar_t__ ldns_dname_label_count (int *) ;
 int * ldns_dname_left_chop (int *) ;
 int * ldns_dname_new_frm_str (char*) ;
 int * ldns_dnssec_get_rrsig_for_name_and_type (int *,int ,int *) ;
 scalar_t__ ldns_nsec_bitmap_covers_type (int ,int ) ;
 scalar_t__ ldns_nsec_covers_name (int *,int *) ;
 int ldns_nsec_get_bitmap (int *) ;
 scalar_t__ ldns_rdf2native_int8 (int ) ;
 int ldns_rdf_deep_free (int *) ;
 int ldns_rr_get_type (int *) ;
 int * ldns_rr_list_rr (int *,size_t) ;
 size_t ldns_rr_list_rr_count (int *) ;
 int * ldns_rr_owner (int *) ;
 int ldns_rr_rrsig_labels (int *) ;

ldns_status
ldns_dnssec_verify_denial(ldns_rr *rr,
                          ldns_rr_list *nsecs,
                          ldns_rr_list *rrsigs)
{
 ldns_rdf *rr_name;
 ldns_rdf *wildcard_name;
 ldns_rdf *chopped_dname;
 ldns_rr *cur_nsec;
 size_t i;
 ldns_status result;

 ldns_rr *rrsig;
 bool name_covered = 0;
 bool type_covered = 0;
 bool wildcard_covered = 0;
 bool wildcard_type_covered = 0;

 wildcard_name = ldns_dname_new_frm_str("*");
 rr_name = ldns_rr_owner(rr);
 chopped_dname = ldns_dname_left_chop(rr_name);
 result = ldns_dname_cat(wildcard_name, chopped_dname);
 ldns_rdf_deep_free(chopped_dname);
 if (result != LDNS_STATUS_OK) {
  return result;
 }

 for (i = 0; i < ldns_rr_list_rr_count(nsecs); i++) {
  cur_nsec = ldns_rr_list_rr(nsecs, i);
  if (ldns_dname_compare(rr_name, ldns_rr_owner(cur_nsec)) == 0) {



   rrsig = ldns_dnssec_get_rrsig_for_name_and_type(
       ldns_rr_owner(cur_nsec),
       ldns_rr_get_type(cur_nsec),
       rrsigs);
   if (rrsig && ldns_rdf2native_int8(ldns_rr_rrsig_labels(rrsig))
       == ldns_dname_label_count(rr_name)) {
    wildcard_covered = 1;
   }

   if (ldns_nsec_bitmap_covers_type(ldns_nsec_get_bitmap(cur_nsec),
            ldns_rr_get_type(rr))) {
    type_covered = 1;
   }
  }
  if (ldns_nsec_covers_name(cur_nsec, rr_name)) {
   name_covered = 1;
  }

  if (ldns_dname_compare(wildcard_name,
         ldns_rr_owner(cur_nsec)) == 0) {
   if (ldns_nsec_bitmap_covers_type(ldns_nsec_get_bitmap(cur_nsec),
            ldns_rr_get_type(rr))) {
    wildcard_type_covered = 1;
   }
  }

  if (ldns_nsec_covers_name(cur_nsec, wildcard_name)) {
   wildcard_covered = 1;
  }

 }

 ldns_rdf_deep_free(wildcard_name);

 if (type_covered || !name_covered) {
  return LDNS_STATUS_DNSSEC_NSEC_RR_NOT_COVERED;
 }

 if (wildcard_type_covered || !wildcard_covered) {
  return LDNS_STATUS_DNSSEC_NSEC_WILDCARD_NOT_COVERED;
 }

 return LDNS_STATUS_OK;
}
