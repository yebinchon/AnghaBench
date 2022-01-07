
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_rr ;
typedef int ldns_rdf ;


 scalar_t__ LDNS_RR_TYPE_NS ;
 scalar_t__ ldns_dname_compare (int ,int const*) ;
 scalar_t__ ldns_rr_get_type (int *) ;
 int * ldns_rr_list_rr (int const*,size_t) ;
 size_t ldns_rr_list_rr_count (int const*) ;
 int ldns_rr_owner (int *) ;

__attribute__((used)) static int
rr_list_delegation_only(const ldns_rdf *origin, const ldns_rr_list *rr_list)
{
 size_t i;
 ldns_rr *cur_rr;
 if (!origin || !rr_list) return 0;
 for (i = 0; i < ldns_rr_list_rr_count(rr_list); i++) {
  cur_rr = ldns_rr_list_rr(rr_list, i);
  if (ldns_dname_compare(ldns_rr_owner(cur_rr), origin) == 0) {
   return 0;
  }
  if (ldns_rr_get_type(cur_rr) != LDNS_RR_TYPE_NS) {
   return 0;
  }
 }
 return 1;
}
