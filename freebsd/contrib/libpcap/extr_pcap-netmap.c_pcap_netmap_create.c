
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_netmap {int dummy; } ;
struct TYPE_4__ {int activate_op; } ;
typedef TYPE_1__ pcap_t ;


 TYPE_1__* pcap_create_common (char*,int) ;
 int pcap_netmap_activate ;
 int strncmp (char const*,char*,int) ;

pcap_t *
pcap_netmap_create(const char *device, char *ebuf, int *is_ours)
{
 pcap_t *p;

 *is_ours = (!strncmp(device, "netmap:", 7) || !strncmp(device, "vale", 4));
 if (! *is_ours)
  return ((void*)0);
 p = pcap_create_common(ebuf, sizeof (struct pcap_netmap));
 if (p == ((void*)0))
  return (((void*)0));
 p->activate_op = pcap_netmap_activate;
 return (p);
}
