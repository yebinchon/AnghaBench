
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_netfilter {int dummy; } ;
struct TYPE_4__ {int activate_op; } ;
typedef TYPE_1__ pcap_t ;


 int NFLOG_IFACE ;
 int NFQUEUE_IFACE ;
 int netfilter_activate ;
 TYPE_1__* pcap_create_common (char*,int) ;
 scalar_t__ strncmp (char const*,int ,int) ;
 char* strrchr (char const*,char) ;

pcap_t *
netfilter_create(const char *device, char *ebuf, int *is_ours)
{
 const char *cp;
 pcap_t *p;


 cp = strrchr(device, '/');
 if (cp == ((void*)0))
  cp = device;


 if (strncmp(cp, NFLOG_IFACE, sizeof NFLOG_IFACE - 1) == 0)
  cp += sizeof NFLOG_IFACE - 1;
 else if (strncmp(cp, NFQUEUE_IFACE, sizeof NFQUEUE_IFACE - 1) == 0)
  cp += sizeof NFQUEUE_IFACE - 1;
 else {

  *is_ours = 0;
  return ((void*)0);
 }





 if (*cp != ':' && *cp != '\0') {

  *is_ours = 0;
  return ((void*)0);
 }


 *is_ours = 1;

 p = pcap_create_common(ebuf, sizeof (struct pcap_netfilter));
 if (p == ((void*)0))
  return (((void*)0));

 p->activate_op = netfilter_activate;
 return (p);
}
