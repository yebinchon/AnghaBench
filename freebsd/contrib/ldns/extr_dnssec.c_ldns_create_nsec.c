
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef scalar_t__ ldns_rr_type ;
typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RR_TYPE_NSEC ;
 scalar_t__ LDNS_RR_TYPE_RRSIG ;
 int ldns_dnssec_create_nsec_bitmap (scalar_t__*,size_t,scalar_t__) ;
 int ldns_rdf_clone (int *) ;
 scalar_t__ ldns_rdf_compare (int *,int ) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_list_rr (int *,scalar_t__) ;
 scalar_t__ ldns_rr_list_rr_count (int *) ;
 int * ldns_rr_new () ;
 int ldns_rr_owner (int *) ;
 int ldns_rr_push_rdf (int *,int ) ;
 int ldns_rr_set_owner (int *,int ) ;
 int ldns_rr_set_type (int *,scalar_t__) ;

ldns_rr *
ldns_create_nsec(ldns_rdf *cur_owner, ldns_rdf *next_owner, ldns_rr_list *rrs)
{
 uint16_t i;
 ldns_rr *i_rr;
 uint16_t i_type;

 ldns_rr *nsec = ((void*)0);
 ldns_rr_type i_type_list[65536];
 size_t type_count = 0;

 nsec = ldns_rr_new();
 ldns_rr_set_type(nsec, LDNS_RR_TYPE_NSEC);
 ldns_rr_set_owner(nsec, ldns_rdf_clone(cur_owner));
 ldns_rr_push_rdf(nsec, ldns_rdf_clone(next_owner));

 for (i = 0; i < ldns_rr_list_rr_count(rrs); i++) {
  i_rr = ldns_rr_list_rr(rrs, i);
  if (ldns_rdf_compare(cur_owner,
       ldns_rr_owner(i_rr)) == 0) {
   i_type = ldns_rr_get_type(i_rr);
   if (i_type != LDNS_RR_TYPE_RRSIG && i_type != LDNS_RR_TYPE_NSEC) {
    if (type_count == 0 || i_type_list[type_count-1] != i_type) {
     i_type_list[type_count] = i_type;
     type_count++;
    }
   }
  }
 }

 i_type_list[type_count] = LDNS_RR_TYPE_RRSIG;
 type_count++;
 i_type_list[type_count] = LDNS_RR_TYPE_NSEC;
 type_count++;

 ldns_rr_push_rdf(nsec,
      ldns_dnssec_create_nsec_bitmap(i_type_list,
      type_count, LDNS_RR_TYPE_NSEC));

 return nsec;
}
