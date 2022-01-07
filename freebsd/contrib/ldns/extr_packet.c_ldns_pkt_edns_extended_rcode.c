
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int _edns_extended_rcode; } ;
typedef TYPE_1__ ldns_pkt ;



uint8_t
ldns_pkt_edns_extended_rcode(const ldns_pkt *packet)
{
 return packet->_edns_extended_rcode;
}
