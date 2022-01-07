
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_rr_type ;
typedef int ldns_rr_list ;


 int ldns_rr_get_type (int ) ;
 int ldns_rr_list_rr (int const*,int ) ;
 scalar_t__ ldns_rr_list_rr_count (int const*) ;

ldns_rr_type
ldns_rr_list_type(const ldns_rr_list *rr_list)
{
 if (rr_list && ldns_rr_list_rr_count(rr_list) > 0) {
  return ldns_rr_get_type(ldns_rr_list_rr(rr_list, 0));
 } else {
  return 0;
 }
}
