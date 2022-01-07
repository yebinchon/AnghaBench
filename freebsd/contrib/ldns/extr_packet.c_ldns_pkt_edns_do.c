
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int _edns_z; } ;
typedef TYPE_1__ ldns_pkt ;


 int LDNS_EDNS_MASK_DO_BIT ;

bool
ldns_pkt_edns_do(const ldns_pkt *packet)
{
 return (packet->_edns_z & LDNS_EDNS_MASK_DO_BIT);
}
