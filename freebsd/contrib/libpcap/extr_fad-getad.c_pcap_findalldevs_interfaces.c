
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct ifaddrs {char const* ifa_name; int ifa_flags; struct sockaddr* ifa_dstaddr; struct sockaddr* ifa_broadaddr; struct sockaddr* ifa_netmask; struct sockaddr* ifa_addr; struct ifaddrs* ifa_next; } ;
typedef int pcap_if_list_t ;
typedef int get_if_flags_func ;


 int IFF_BROADCAST ;
 int IFF_POINTOPOINT ;
 int PCAP_ERRBUF_SIZE ;
 size_t SA_LEN (struct sockaddr*) ;
 scalar_t__ add_addr_to_if (int *,char const*,int,int ,struct sockaddr*,size_t,struct sockaddr*,size_t,struct sockaddr*,size_t,struct sockaddr*,size_t,char*) ;
 int errno ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 scalar_t__ isdigit (unsigned char) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;
 char* strchr (char const*,char) ;
 int stub1 (char const*) ;

int
pcap_findalldevs_interfaces(pcap_if_list_t *devlistp, char *errbuf,
    int (*check_usable)(const char *), get_if_flags_func get_flags_func)
{
 struct ifaddrs *ifap, *ifa;
 struct sockaddr *addr, *netmask, *broadaddr, *dstaddr;
 size_t addr_size, broadaddr_size, dstaddr_size;
 int ret = 0;
 char *p, *q;
 if (getifaddrs(&ifap) != 0) {
  pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
      errno, "getifaddrs");
  return (-1);
 }
 for (ifa = ifap; ifa != ((void*)0); ifa = ifa->ifa_next) {
  p = strchr(ifa->ifa_name, ':');
  if (p != ((void*)0)) {



   q = p + 1;
   while (isdigit((unsigned char)*q))
    q++;
   if (*q == '\0') {





          *p = '\0';
   }
  }




  if (!(*check_usable)(ifa->ifa_name)) {



   continue;
  }
  if (ifa->ifa_addr != ((void*)0)) {
   addr = ifa->ifa_addr;
   addr_size = SA_LEN(addr);
   netmask = ifa->ifa_netmask;
  } else {
   addr = ((void*)0);
   addr_size = 0;
   netmask = ((void*)0);
  }
  if (ifa->ifa_flags & IFF_BROADCAST &&
      ifa->ifa_broadaddr != ((void*)0)) {
   broadaddr = ifa->ifa_broadaddr;
   broadaddr_size = SA_LEN(broadaddr);
  } else {
   broadaddr = ((void*)0);
   broadaddr_size = 0;
  }
  if (ifa->ifa_flags & IFF_POINTOPOINT &&
      ifa->ifa_dstaddr != ((void*)0)) {
   dstaddr = ifa->ifa_dstaddr;
   dstaddr_size = SA_LEN(ifa->ifa_dstaddr);
  } else {
   dstaddr = ((void*)0);
   dstaddr_size = 0;
  }




  if (add_addr_to_if(devlistp, ifa->ifa_name, ifa->ifa_flags,
      get_flags_func,
      addr, addr_size, netmask, addr_size,
      broadaddr, broadaddr_size, dstaddr, dstaddr_size,
      errbuf) < 0) {
   ret = -1;
   break;
  }
 }

 freeifaddrs(ifap);

 return (ret);
}
