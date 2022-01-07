
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_dnssec_zone ;


 int ldns_dnssec_zone_mark_and_get_glue (int *,int *) ;

ldns_status
ldns_dnssec_zone_mark_glue(ldns_dnssec_zone *zone)
{
 return ldns_dnssec_zone_mark_and_get_glue(zone, ((void*)0));
}
