
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int timeout; } ;
struct TYPE_6__ {TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;


 int PCAP_ERROR_ACTIVATED ;
 scalar_t__ pcap_check_activated (TYPE_2__*) ;

int
pcap_set_timeout(pcap_t *p, int timeout_ms)
{
 if (pcap_check_activated(p))
  return (PCAP_ERROR_ACTIVATED);
 p->opt.timeout = timeout_ms;
 return (0);
}
