
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct TYPE_3__ {struct timeval timestamp; } ;
typedef TYPE_1__ ldns_pkt ;



struct timeval
ldns_pkt_timestamp(const ldns_pkt *packet)
{
 return packet->timestamp;
}
