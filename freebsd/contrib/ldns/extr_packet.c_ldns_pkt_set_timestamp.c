
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct timeval {int tv_usec; int tv_sec; } ;
struct TYPE_4__ {int tv_usec; int tv_sec; } ;
struct TYPE_5__ {TYPE_1__ timestamp; } ;
typedef TYPE_2__ ldns_pkt ;



void
ldns_pkt_set_timestamp(ldns_pkt *packet, struct timeval timeval)
{
 packet->timestamp.tv_sec = timeval.tv_sec;
 packet->timestamp.tv_usec = timeval.tv_usec;
}
