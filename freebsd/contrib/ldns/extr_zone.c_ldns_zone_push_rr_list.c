
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_zone ;
typedef int ldns_rr_list ;


 int ldns_rr_list_cat (int ,int const*) ;
 int ldns_zone_rrs (int *) ;

bool
ldns_zone_push_rr_list(ldns_zone *z, const ldns_rr_list *list)
{
 return ldns_rr_list_cat(ldns_zone_rrs(z), list);
}
