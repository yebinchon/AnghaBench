
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int ldns_rr_type ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 int LDNS_FREE (int *) ;
 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ldns_dname_cat (int *,int *) ;
 scalar_t__ ldns_dname_compare (int *,int *) ;
 scalar_t__ ldns_dname_label_count (int *) ;
 int * ldns_dname_left_chop (int *) ;
 int ldns_nsec3_algorithm (int *) ;
 int * ldns_nsec3_hash_name (int *,int ,int ,int ,int *) ;
 int ldns_nsec3_iterations (int *) ;
 int * ldns_nsec3_salt_data (int *) ;
 int ldns_nsec3_salt_length (int *) ;
 scalar_t__ ldns_nsec_covers_name (int *,int *) ;
 int * ldns_rdf_clone (int *) ;
 int ldns_rdf_deep_free (int *) ;
 int ldns_rdf_print (int ,int *) ;
 int * ldns_rr_list_rr (int *,size_t) ;
 size_t ldns_rr_list_rr_count (int *) ;
 int * ldns_rr_owner (int *) ;
 int printf (char*,...) ;
 int stdout ;
 int verbosity ;

ldns_rdf *
ldns_nsec3_closest_encloser(ldns_rdf *qname, ldns_rr_type qtype, ldns_rr_list *nsec3s)
{

 uint8_t algorithm;
 uint32_t iterations;
 uint8_t salt_length;
 uint8_t *salt;

 ldns_rdf *sname = ((void*)0), *hashed_sname = ((void*)0), *tmp;
 bool flag;

 bool exact_match_found;
 bool in_range_found;

 ldns_rdf *zone_name = ((void*)0);

 size_t nsec_i;
 ldns_rr *nsec;
 ldns_rdf *result = ((void*)0);

 if (!qname || !nsec3s || ldns_rr_list_rr_count(nsec3s) < 1) {
  return ((void*)0);
 }

 if (verbosity >= 4) {
  printf(";; finding closest encloser for type %d ", qtype);
  ldns_rdf_print(stdout, qname);
  printf("\n");
 }

 nsec = ldns_rr_list_rr(nsec3s, 0);
 algorithm = ldns_nsec3_algorithm(nsec);
 salt_length = ldns_nsec3_salt_length(nsec);
 salt = ldns_nsec3_salt_data(nsec);
 iterations = ldns_nsec3_iterations(nsec);
 if (salt == ((void*)0)) {
  goto done;
 }

 sname = ldns_rdf_clone(qname);
 if (sname == ((void*)0)) {
  goto done;
 }

 flag = 0;

 zone_name = ldns_dname_left_chop(ldns_rr_owner(nsec));
 if (zone_name == ((void*)0)) {
  goto done;
 }


 while (ldns_dname_label_count(sname) > 0) {
  exact_match_found = 0;
  in_range_found = 0;

  if (verbosity >= 3) {
   printf(";; ");
   ldns_rdf_print(stdout, sname);
   printf(" hashes to: ");
  }
  hashed_sname = ldns_nsec3_hash_name(sname, algorithm, iterations, salt_length, salt);
  if (hashed_sname == ((void*)0)) {
   goto done;
  }

  if (ldns_dname_cat(hashed_sname, zone_name) != LDNS_STATUS_OK){
   goto done;
  }

  if (verbosity >= 3) {
   ldns_rdf_print(stdout, hashed_sname);
   printf("\n");
  }

  for (nsec_i = 0; nsec_i < ldns_rr_list_rr_count(nsec3s); nsec_i++) {
   nsec = ldns_rr_list_rr(nsec3s, nsec_i);




   if (ldns_dname_compare(ldns_rr_owner(nsec), hashed_sname) == 0) {
    if (verbosity >= 4) {
     printf(";; exact match found\n");
    }
     exact_match_found = 1;
   } else if (ldns_nsec_covers_name(nsec, hashed_sname)) {
    if (verbosity >= 4) {
     printf(";; in range of an nsec\n");
    }
    in_range_found = 1;
   }

  }
  if (!exact_match_found && in_range_found) {
   flag = 1;
  } else if (exact_match_found && flag) {
   result = ldns_rdf_clone(sname);
  } else if (exact_match_found && !flag) {

   if (verbosity >= 4) {
    printf(";; the closest encloser is the same name (ie. this is an exact match, ie there is no closest encloser)\n");
   }
   ldns_rdf_deep_free(hashed_sname);
   goto done;
  } else {
   flag = 0;
  }

  ldns_rdf_deep_free(hashed_sname);
  tmp = sname;
  sname = ldns_dname_left_chop(sname);
  ldns_rdf_deep_free(tmp);
  if (sname == ((void*)0)) {
   goto done;
  }
 }

done:
 LDNS_FREE(salt);
 ldns_rdf_deep_free(zone_name);
 ldns_rdf_deep_free(sname);

 if (!result) {
  if (verbosity >= 4) {
   printf(";; no closest encloser found\n");
  }
 }


 return result;
}
