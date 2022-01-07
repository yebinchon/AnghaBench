
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_3__ {int _edns_udp_size; } ;
typedef TYPE_1__ ldns_resolver ;



void
ldns_resolver_set_edns_udp_size(ldns_resolver *r, uint16_t s)
{
         r->_edns_udp_size = s;
}
