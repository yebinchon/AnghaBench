
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t _size; } ;
typedef TYPE_1__ ldns_pkt ;



void
ldns_pkt_set_size(ldns_pkt *packet, size_t s)
{
 packet->_size = s;
}
