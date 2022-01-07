
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_if_list_t ;


 int PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE ;
 int * add_dev (int *,char*,int ,char*,char*) ;

int
dbus_findalldevs(pcap_if_list_t *devlistp, char *err_str)
{




 if (add_dev(devlistp, "dbus-system",
     PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE, "D-Bus system bus",
     err_str) == ((void*)0))
  return -1;
 if (add_dev(devlistp, "dbus-session",
     PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE, "D-Bus session bus",
     err_str) == ((void*)0))
  return -1;
 return 0;
}
