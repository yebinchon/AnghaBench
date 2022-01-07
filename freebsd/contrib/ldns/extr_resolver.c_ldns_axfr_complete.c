
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _axfr_soa_count; } ;
typedef TYPE_1__ ldns_resolver ;



bool
ldns_axfr_complete(const ldns_resolver *res)
{

 return res->_axfr_soa_count == 2;
}
