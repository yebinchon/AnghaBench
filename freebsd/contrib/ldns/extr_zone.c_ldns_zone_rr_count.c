
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _rrs; } ;
typedef TYPE_1__ ldns_zone ;


 size_t ldns_rr_list_rr_count (int ) ;

size_t
ldns_zone_rr_count(const ldns_zone *z)
{
 return ldns_rr_list_rr_count(z->_rrs);
}
