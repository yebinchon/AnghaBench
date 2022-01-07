
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint16_t ;
struct TYPE_5__ {TYPE_1__* _header; } ;
typedef TYPE_2__ ldns_pkt ;
struct TYPE_4__ {int _id; } ;



void
ldns_pkt_set_id(ldns_pkt *packet, uint16_t id)
{
 packet->_header->_id = id;
}
