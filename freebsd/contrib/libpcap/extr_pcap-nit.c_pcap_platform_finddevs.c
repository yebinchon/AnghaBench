
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_if_list_t ;


 int can_be_bound ;
 int get_if_flags ;
 int pcap_findalldevs_interfaces (int *,char*,int ,int ) ;

int
pcap_platform_finddevs(pcap_if_list_t *devlistp, char *errbuf)
{
 return (pcap_findalldevs_interfaces(devlistp, errbuf, can_be_bound,
     get_if_flags));
}
