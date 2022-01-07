
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_zone ;
typedef int ldns_rr ;


 int ldns_rr_list_push_rr (int ,int *) ;
 int ldns_zone_rrs (int *) ;

bool
ldns_zone_push_rr(ldns_zone *z, ldns_rr *rr)
{
 return ldns_rr_list_push_rr(ldns_zone_rrs(z), rr);
}
