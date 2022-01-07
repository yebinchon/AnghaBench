
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_status ;
typedef int ldns_dnssec_zone ;


 int ldns_dnssec_zone_add_empty_nonterminals_nsec3 (int *,int *) ;

ldns_status
ldns_dnssec_zone_add_empty_nonterminals(ldns_dnssec_zone *zone)
{
 return ldns_dnssec_zone_add_empty_nonterminals_nsec3(zone, ((void*)0));
}
