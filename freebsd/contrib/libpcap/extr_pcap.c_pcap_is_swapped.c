
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int swapped; int activated; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_ERROR_NOT_ACTIVATED ;

int
pcap_is_swapped(pcap_t *p)
{
 if (!p->activated)
  return (PCAP_ERROR_NOT_ACTIVATED);
 return (p->swapped);
}
