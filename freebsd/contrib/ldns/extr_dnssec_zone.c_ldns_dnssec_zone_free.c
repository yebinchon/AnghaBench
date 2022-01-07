
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* names; } ;
typedef TYPE_1__ ldns_dnssec_zone ;


 int LDNS_FREE (TYPE_1__*) ;
 int ldns_dnssec_name_node_free ;
 int ldns_traverse_postorder (TYPE_1__*,int ,int *) ;

void
ldns_dnssec_zone_free(ldns_dnssec_zone *zone)
{
 if (zone) {
  if (zone->names) {

   ldns_traverse_postorder(zone->names,
          ldns_dnssec_name_node_free,
          ((void*)0));
   LDNS_FREE(zone->names);
  }
  LDNS_FREE(zone);
 }
}
