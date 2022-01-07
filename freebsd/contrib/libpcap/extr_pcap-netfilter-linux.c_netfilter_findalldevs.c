
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_if_list_t ;


 int AF_NETLINK ;
 scalar_t__ EAFNOSUPPORT ;
 scalar_t__ EPROTONOSUPPORT ;
 int NETLINK_NETFILTER ;
 int NFLOG_IFACE ;
 int NFQUEUE_IFACE ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE ;
 int SOCK_RAW ;
 int * add_dev (int *,int ,int ,char*,char*) ;
 int close (int) ;
 scalar_t__ errno ;
 int pcap_fmt_errmsg_for_errno (char*,int ,scalar_t__,char*) ;
 int socket (int ,int ,int ) ;

int
netfilter_findalldevs(pcap_if_list_t *devlistp, char *err_str)
{
 int sock;

 sock = socket(AF_NETLINK, SOCK_RAW, NETLINK_NETFILTER);
 if (sock < 0) {

  if (errno == EAFNOSUPPORT || errno == EPROTONOSUPPORT)
   return 0;
  pcap_fmt_errmsg_for_errno(err_str, PCAP_ERRBUF_SIZE,
      errno, "Can't open netlink socket");
  return -1;
 }
 close(sock);





 if (add_dev(devlistp, NFLOG_IFACE,
     PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE,
     "Linux netfilter log (NFLOG) interface", err_str) == ((void*)0))
  return -1;
 if (add_dev(devlistp, NFQUEUE_IFACE,
     PCAP_IF_CONNECTION_STATUS_NOT_APPLICABLE,
     "Linux netfilter queue (NFQUEUE) interface", err_str) == ((void*)0))
  return -1;
 return 0;
}
