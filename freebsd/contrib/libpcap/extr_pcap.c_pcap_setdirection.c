
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int (* setdirection_op ) (TYPE_1__*,int ) ;int errbuf; } ;
typedef TYPE_1__ pcap_t ;
typedef int pcap_direction_t ;


 int PCAP_ERRBUF_SIZE ;
 int pcap_snprintf (int ,int ,char*) ;
 int stub1 (TYPE_1__*,int ) ;

int
pcap_setdirection(pcap_t *p, pcap_direction_t d)
{
 if (p->setdirection_op == ((void*)0)) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "Setting direction is not implemented on this platform");
  return (-1);
 } else
  return (p->setdirection_op(p, d));
}
