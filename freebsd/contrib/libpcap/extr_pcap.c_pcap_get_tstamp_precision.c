
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int tstamp_precision; } ;
struct TYPE_5__ {TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;



int
pcap_get_tstamp_precision(pcap_t *p)
{
        return (p->opt.tstamp_precision);
}
