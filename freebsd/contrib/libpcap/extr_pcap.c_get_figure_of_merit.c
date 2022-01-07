
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {char* name; int flags; } ;
typedef TYPE_1__ pcap_if_t ;


 int PCAP_IF_CONNECTION_STATUS ;
 int PCAP_IF_CONNECTION_STATUS_DISCONNECTED ;
 int PCAP_IF_LOOPBACK ;
 int PCAP_IF_RUNNING ;
 int PCAP_IF_UP ;
 int PCAP_IF_WIRELESS ;
 int atoi (char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static u_int
get_figure_of_merit(pcap_if_t *dev)
{
 const char *cp;
 u_int n;

 if (strcmp(dev->name, "any") == 0) {





  n = 0x1FFFFFFF;
 } else {







  cp = dev->name + strlen(dev->name) - 1;
  while (cp-1 >= dev->name && *(cp-1) >= '0' && *(cp-1) <= '9')
   cp--;
  if (*cp >= '0' && *cp <= '9')
   n = atoi(cp) + 1;
  else
   n = 0;
 }
 if (!(dev->flags & PCAP_IF_RUNNING))
  n |= 0x80000000;
 if (!(dev->flags & PCAP_IF_UP))
  n |= 0x40000000;
 if (!(dev->flags & PCAP_IF_WIRELESS) &&
     (dev->flags & PCAP_IF_CONNECTION_STATUS) == PCAP_IF_CONNECTION_STATUS_DISCONNECTED)
  n |= 0x20000000;





 if (dev->flags & PCAP_IF_LOOPBACK)
  n |= 0x10000000;

 return (n);
}
