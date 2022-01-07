
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _rrs; int _soa; } ;
typedef TYPE_1__ ldns_zone ;


 int LDNS_FREE (TYPE_1__*) ;
 int ldns_rr_free (int ) ;
 int ldns_rr_list_deep_free (int ) ;

void
ldns_zone_deep_free(ldns_zone *zone)
{
 ldns_rr_free(zone->_soa);
 ldns_rr_list_deep_free(zone->_rrs);
 LDNS_FREE(zone);
}
