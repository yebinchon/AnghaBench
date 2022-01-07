
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* _header; } ;
typedef TYPE_2__ ldns_pkt ;
struct TYPE_4__ {int _ad; } ;



void
ldns_pkt_set_ad(ldns_pkt *packet, bool ad)
{
 packet->_header->_ad = ad;
}
