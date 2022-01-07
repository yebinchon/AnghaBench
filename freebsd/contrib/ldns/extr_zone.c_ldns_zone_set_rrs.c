
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * _rrs; } ;
typedef TYPE_1__ ldns_zone ;
typedef int ldns_rr_list ;



void
ldns_zone_set_rrs(ldns_zone *z, ldns_rr_list *rrlist)
{
 z->_rrs = rrlist;
}
