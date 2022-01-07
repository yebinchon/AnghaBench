
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int pcap_if_list_t ;
typedef int buf ;


 int A_GET_UNITS ;
 int O_RDWR ;
 int PCAP_ERRBUF_SIZE ;
 int * add_dev (int *,char*,int ,int *,char*) ;
 int errno ;
 int get_if_flags ;
 int is_dlpi_interface ;
 int open (char*,int ) ;
 int pcap_findalldevs_interfaces (int *,char*,int ,int ) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;
 int pcap_snprintf (char*,int,char*,scalar_t__) ;
 scalar_t__ strioctl (int,int ,int,char*) ;

int
pcap_platform_finddevs(pcap_if_list_t *devlistp, char *errbuf)
{
 if (pcap_findalldevs_interfaces(devlistp, errbuf, is_dlpi_interface,
     get_if_flags) == -1)
  return (-1);
 return (0);
}
