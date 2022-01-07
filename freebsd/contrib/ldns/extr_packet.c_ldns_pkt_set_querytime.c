
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int _querytime; } ;
typedef TYPE_1__ ldns_pkt ;



void
ldns_pkt_set_querytime(ldns_pkt *packet, uint32_t time)
{
 packet->_querytime = time;
}
