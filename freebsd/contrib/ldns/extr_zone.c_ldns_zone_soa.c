
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * _soa; } ;
typedef TYPE_1__ ldns_zone ;
typedef int ldns_rr ;



ldns_rr *
ldns_zone_soa(const ldns_zone *z)
{
        return z->_soa;
}
