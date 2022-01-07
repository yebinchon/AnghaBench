
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct pcap_samp {int dummy; } ;
struct TYPE_3__ {struct pcap_samp rmt_samp; } ;
typedef TYPE_1__ pcap_t ;



struct pcap_samp *pcap_setsampling(pcap_t *p)
{
 return &p->rmt_samp;
}
