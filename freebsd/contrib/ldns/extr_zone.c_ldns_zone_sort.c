
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ldns_zone ;
typedef int ldns_rr_list ;


 int assert (int ) ;
 int ldns_rr_list_sort (int *) ;
 int * ldns_zone_rrs (int *) ;

void
ldns_zone_sort(ldns_zone *zone)
{
 ldns_rr_list *zrr;
 assert(zone != ((void*)0));

 zrr = ldns_zone_rrs(zone);
 ldns_rr_list_sort(zrr);
}
