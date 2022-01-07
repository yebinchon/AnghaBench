
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int snapshot; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERROR_ACTIVATED ;
 scalar_t__ pcap_check_activated (TYPE_1__*) ;

int
pcap_set_snaplen(pcap_t *p, int snaplen)
{
 if (pcap_check_activated(p))
  return (PCAP_ERROR_ACTIVATED);
 p->snapshot = snaplen;
 return (0);
}
