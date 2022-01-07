
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_if_list_t ;


 int check_bpf_bindable ;
 int finddevs_usb (int *,char*) ;
 int get_if_flags ;
 int pcap_findalldevs_interfaces (int *,char*,int ,int ) ;

int
pcap_platform_finddevs(pcap_if_list_t *devlistp, char *errbuf)
{



 if (pcap_findalldevs_interfaces(devlistp, errbuf, check_bpf_bindable,
     get_if_flags) == -1)
  return (-1);






 return (0);
}
