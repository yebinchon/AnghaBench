
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int _serial; } ;
typedef TYPE_1__ ldns_resolver ;



uint32_t
ldns_resolver_get_ixfr_serial(const ldns_resolver *res)
{
 return res->_serial;
}
