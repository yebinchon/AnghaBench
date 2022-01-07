
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errbuf; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int pcap_snprintf (int ,int ,char*) ;

__attribute__((used)) static int
pcap_can_set_rfmon_dead(pcap_t *p)
{
 pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
     "Rfmon mode doesn't apply on a pcap_open_dead pcap_t");
 return (PCAP_ERROR);
}
