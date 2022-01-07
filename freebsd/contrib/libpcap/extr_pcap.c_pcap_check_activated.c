
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int errbuf; scalar_t__ activated; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERRBUF_SIZE ;
 int pcap_snprintf (int ,int ,char*) ;

int
pcap_check_activated(pcap_t *p)
{
 if (p->activated) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE, "can't perform "
   " operation on activated capture");
  return (-1);
 }
 return (0);
}
