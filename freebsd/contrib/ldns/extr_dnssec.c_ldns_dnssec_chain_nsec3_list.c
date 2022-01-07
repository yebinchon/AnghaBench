
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_rr_list ;
typedef int ldns_rdf ;


 int LDNS_FREE (char*) ;
 int LDNS_STATUS_OK ;
 int * ldns_dname_label (int ,int ) ;
 char* ldns_rdf2str (int *) ;
 int ldns_rdf_deep_free (int *) ;
 int ldns_rr_list_rr (int *,size_t) ;
 int ldns_rr_list_rr_count (int *) ;
 int ldns_rr_owner (int ) ;
 int ldns_rr_set_rdf (int ,int *,int) ;
 int ldns_str2rdf_b32_ext (int **,char*) ;
 int strlen (char*) ;

ldns_status
ldns_dnssec_chain_nsec3_list(ldns_rr_list *nsec3_rrs)
{
 size_t i;
 char *next_nsec_owner_str;
 ldns_rdf *next_nsec_owner_label;
 ldns_rdf *next_nsec_rdf;
 ldns_status status = LDNS_STATUS_OK;

 for (i = 0; i < ldns_rr_list_rr_count(nsec3_rrs); i++) {
  if (i == ldns_rr_list_rr_count(nsec3_rrs) - 1) {
   next_nsec_owner_label =
    ldns_dname_label(ldns_rr_owner(ldns_rr_list_rr(nsec3_rrs,
               0)), 0);
   next_nsec_owner_str = ldns_rdf2str(next_nsec_owner_label);
   if (next_nsec_owner_str[strlen(next_nsec_owner_str) - 1]
       == '.') {
    next_nsec_owner_str[strlen(next_nsec_owner_str) - 1]
     = '\0';
   }
   status = ldns_str2rdf_b32_ext(&next_nsec_rdf,
         next_nsec_owner_str);
   if (!ldns_rr_set_rdf(ldns_rr_list_rr(nsec3_rrs, i),
        next_nsec_rdf, 4)) {

   }

   ldns_rdf_deep_free(next_nsec_owner_label);
   LDNS_FREE(next_nsec_owner_str);
  } else {
   next_nsec_owner_label =
    ldns_dname_label(ldns_rr_owner(ldns_rr_list_rr(nsec3_rrs,
               i + 1)),
         0);
   next_nsec_owner_str = ldns_rdf2str(next_nsec_owner_label);
   if (next_nsec_owner_str[strlen(next_nsec_owner_str) - 1]
       == '.') {
    next_nsec_owner_str[strlen(next_nsec_owner_str) - 1]
     = '\0';
   }
   status = ldns_str2rdf_b32_ext(&next_nsec_rdf,
         next_nsec_owner_str);
   ldns_rdf_deep_free(next_nsec_owner_label);
   LDNS_FREE(next_nsec_owner_str);
   if (!ldns_rr_set_rdf(ldns_rr_list_rr(nsec3_rrs, i),
        next_nsec_rdf, 4)) {

   }
  }
 }
 return status;
}
