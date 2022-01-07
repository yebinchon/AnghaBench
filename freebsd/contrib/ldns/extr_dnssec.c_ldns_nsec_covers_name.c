
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rr ;
typedef int const ldns_rdf ;


 int LDNS_FREE (char*) ;
 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_NSEC3 ;
 int LDNS_STATUS_OK ;
 int ldns_dname_cat (int const*,int const*) ;
 scalar_t__ ldns_dname_compare (int const*,int const*) ;
 int const* ldns_dname_left_chop (int const*) ;
 int const* ldns_dname_new_frm_str (char*) ;
 char* ldns_get_errorstr_by_id (int ) ;
 int const* ldns_nsec3_next_owner (int const*) ;
 char* ldns_rdf2str (int const*) ;
 int const* ldns_rdf_clone (int *) ;
 int ldns_rdf_deep_free (int const*) ;
 scalar_t__ ldns_rr_get_type (int const*) ;
 int const* ldns_rr_owner (int const*) ;
 int * ldns_rr_rdf (int const*,int ) ;
 int printf (char*,char*) ;

bool
ldns_nsec_covers_name(const ldns_rr *nsec, const ldns_rdf *name)
{
 ldns_rdf *nsec_owner = ldns_rr_owner(nsec);
 ldns_rdf *hash_next;
 char *next_hash_str;
 ldns_rdf *nsec_next = ((void*)0);
 ldns_status status;
 ldns_rdf *chopped_dname;
 bool result;

 if (ldns_rr_get_type(nsec) == LDNS_RR_TYPE_NSEC) {
  if (ldns_rr_rdf(nsec, 0) != ((void*)0)) {
   nsec_next = ldns_rdf_clone(ldns_rr_rdf(nsec, 0));
  } else {
   return 0;
  }
 } else if (ldns_rr_get_type(nsec) == LDNS_RR_TYPE_NSEC3) {
  hash_next = ldns_nsec3_next_owner(nsec);
  next_hash_str = ldns_rdf2str(hash_next);
  nsec_next = ldns_dname_new_frm_str(next_hash_str);
  LDNS_FREE(next_hash_str);
  chopped_dname = ldns_dname_left_chop(nsec_owner);
  status = ldns_dname_cat(nsec_next, chopped_dname);
  ldns_rdf_deep_free(chopped_dname);
  if (status != LDNS_STATUS_OK) {
   printf("error catting: %s\n", ldns_get_errorstr_by_id(status));
  }
 } else {
  ldns_rdf_deep_free(nsec_next);
  return 0;
 }


 if(ldns_dname_compare(nsec_owner, nsec_next) > 0) {
  result = (ldns_dname_compare(nsec_owner, name) <= 0 ||
    ldns_dname_compare(name, nsec_next) < 0);
 } else if(ldns_dname_compare(nsec_owner, nsec_next) < 0) {
  result = (ldns_dname_compare(nsec_owner, name) <= 0 &&
            ldns_dname_compare(name, nsec_next) < 0);
 } else {
  result = 1;
 }

 ldns_rdf_deep_free(nsec_next);
 return result;
}
