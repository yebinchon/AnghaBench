
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint16_t ;
typedef scalar_t__ ldns_status ;
typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 int LDNS_RR_TYPE_NSEC3 ;
 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 scalar_t__ LDNS_RR_TYPE_SOA ;
 scalar_t__ LDNS_STATUS_OK ;
 scalar_t__ ldns_dname_cat (int *,int const*) ;
 scalar_t__ ldns_dname_compare (int const*,int const*) ;
 int ldns_dnssec_create_nsec_bitmap (scalar_t__*,size_t,int ) ;
 int ldns_nsec3_add_param_rdfs (int *,int ,int ,scalar_t__,int ,int const*) ;
 int * ldns_nsec3_hash_name (int const*,int ,scalar_t__,int ,int const*) ;
 scalar_t__ ldns_rdf_compare (int const*,int ) ;
 int ldns_rdf_deep_free (int *) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_list_rr (int const*,size_t) ;
 size_t ldns_rr_list_rr_count (int const*) ;
 int * ldns_rr_new_frm_type (int ) ;
 int ldns_rr_owner (int *) ;
 int ldns_rr_push_rdf (int *,int ) ;
 int ldns_rr_set_owner (int *,int *) ;
 int ldns_rr_set_rdf (int *,int *,int) ;
 int ldns_rr_set_type (int *,int ) ;
 int rr_list_delegation_only (int const*,int const*) ;

ldns_rr *
ldns_create_nsec3(const ldns_rdf *cur_owner,
                  const ldns_rdf *cur_zone,
                  const ldns_rr_list *rrs,
                  uint8_t algorithm,
                  uint8_t flags,
                  uint16_t iterations,
                  uint8_t salt_length,
                  const uint8_t *salt,
                  bool emptynonterminal)
{
 size_t i;
 ldns_rr *i_rr;
 uint16_t i_type;

 ldns_rr *nsec = ((void*)0);
 ldns_rdf *hashed_owner = ((void*)0);

 ldns_status status;

    ldns_rr_type i_type_list[1024];
 size_t type_count = 0;

 hashed_owner = ldns_nsec3_hash_name(cur_owner,
         algorithm,
         iterations,
         salt_length,
         salt);
 status = ldns_dname_cat(hashed_owner, cur_zone);
        if(status != LDNS_STATUS_OK) {
  ldns_rdf_deep_free(hashed_owner);
                return ((void*)0);
 }
 nsec = ldns_rr_new_frm_type(LDNS_RR_TYPE_NSEC3);
        if(!nsec) {
  ldns_rdf_deep_free(hashed_owner);
                return ((void*)0);
 }
 ldns_rr_set_type(nsec, LDNS_RR_TYPE_NSEC3);
 ldns_rr_set_owner(nsec, hashed_owner);

 ldns_nsec3_add_param_rdfs(nsec,
       algorithm,
       flags,
       iterations,
       salt_length,
       salt);
 (void) ldns_rr_set_rdf(nsec, ((void*)0), 4);


 for (i = 0; i < ldns_rr_list_rr_count(rrs); i++) {
  i_rr = ldns_rr_list_rr(rrs, i);
  if (ldns_rdf_compare(cur_owner,
       ldns_rr_owner(i_rr)) == 0) {
   i_type = ldns_rr_get_type(i_rr);
   if (type_count == 0 || i_type_list[type_count-1] != i_type) {
    i_type_list[type_count] = i_type;
    type_count++;
   }
  }
 }



 if (!emptynonterminal && !rr_list_delegation_only(cur_zone, rrs)) {
  i_type_list[type_count] = LDNS_RR_TYPE_RRSIG;
  type_count++;
 }


 if (ldns_dname_compare(cur_zone, cur_owner) == 0) {
  i_type_list[type_count] = LDNS_RR_TYPE_SOA;
  type_count++;
 }

 ldns_rr_push_rdf(nsec,
      ldns_dnssec_create_nsec_bitmap(i_type_list,
      type_count, LDNS_RR_TYPE_NSEC3));

 return nsec;
}
