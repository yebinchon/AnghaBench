
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_list ;
typedef int ldns_rdf ;


 int ldns_rr_list_rr (int const*,int ) ;
 scalar_t__ ldns_rr_list_rr_count (int const*) ;
 int * ldns_rr_owner (int ) ;

ldns_rdf *
ldns_rr_list_owner(const ldns_rr_list *rr_list)
{
 if (rr_list && ldns_rr_list_rr_count(rr_list) > 0) {
  return ldns_rr_owner(ldns_rr_list_rr(rr_list, 0));
 } else {
  return ((void*)0);
 }
}
