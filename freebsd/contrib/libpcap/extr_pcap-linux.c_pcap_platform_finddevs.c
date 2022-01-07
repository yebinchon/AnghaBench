
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_if_list_t ;


 int PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE ;
 int PCAP_IF_RUNNING ;
 int PCAP_IF_UP ;
 int * add_dev (int *,char*,int,int ,char*) ;
 int any_descr ;
 int can_be_bound ;
 int get_if_flags ;
 int pcap_findalldevs_interfaces (int *,char*,int ,int ) ;
 int scan_proc_net_dev (int *,char*) ;
 int scan_sys_class_net (int *,char*) ;

int
pcap_platform_finddevs(pcap_if_list_t *devlistp, char *errbuf)
{
 int ret;




 if (pcap_findalldevs_interfaces(devlistp, errbuf, can_be_bound,
     get_if_flags) == -1)
  return (-1);
 ret = scan_sys_class_net(devlistp, errbuf);
 if (ret == -1)
  return (-1);
 if (ret == 0) {



  if (scan_proc_net_dev(devlistp, errbuf) == -1)
   return (-1);
 }







 if (add_dev(devlistp, "any",
     PCAP_IF_UP|PCAP_IF_RUNNING|PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE,
     any_descr, errbuf) == ((void*)0))
  return (-1);

 return (0);
}
