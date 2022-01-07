
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pcap_dbus {int dummy; } ;
struct TYPE_4__ {int setnonblock_op; int getnonblock_op; int activate_op; } ;
typedef TYPE_1__ pcap_t ;


 int dbus_activate ;
 int dbus_getnonblock ;
 int dbus_setnonblock ;
 TYPE_1__* pcap_create_common (char*,int) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

pcap_t *
dbus_create(const char *device, char *ebuf, int *is_ours)
{
 pcap_t *p;

 if (strcmp(device, "dbus-system") &&
  strcmp(device, "dbus-session") &&
  strncmp(device, "dbus://", 7))
 {
  *is_ours = 0;
  return ((void*)0);
 }

 *is_ours = 1;
 p = pcap_create_common(ebuf, sizeof (struct pcap_dbus));
 if (p == ((void*)0))
  return (((void*)0));

 p->activate_op = dbus_activate;







 p->getnonblock_op = dbus_getnonblock;
 p->setnonblock_op = dbus_setnonblock;
 return (p);
}
