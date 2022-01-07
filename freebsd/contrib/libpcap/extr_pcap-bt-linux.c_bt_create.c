
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_bt {int dummy; } ;
struct TYPE_4__ {int activate_op; } ;
typedef TYPE_1__ pcap_t ;


 int BT_IFACE ;
 int bt_activate ;
 TYPE_1__* pcap_create_common (char*,int) ;
 scalar_t__ strncmp (char const*,int ,int) ;
 char* strrchr (char const*,char) ;
 long strtol (char const*,char**,int) ;

pcap_t *
bt_create(const char *device, char *ebuf, int *is_ours)
{
 const char *cp;
 char *cpend;
 long devnum;
 pcap_t *p;


 cp = strrchr(device, '/');
 if (cp == ((void*)0))
  cp = device;

 if (strncmp(cp, BT_IFACE, sizeof BT_IFACE - 1) != 0) {

  *is_ours = 0;
  return ((void*)0);
 }

 cp += sizeof BT_IFACE - 1;
 devnum = strtol(cp, &cpend, 10);
 if (cpend == cp || *cpend != '\0') {

  *is_ours = 0;
  return ((void*)0);
 }
 if (devnum < 0) {

  *is_ours = 0;
  return ((void*)0);
 }


 *is_ours = 1;

 p = pcap_create_common(ebuf, sizeof (struct pcap_bt));
 if (p == ((void*)0))
  return (((void*)0));

 p->activate_op = bt_activate;
 return (p);
}
