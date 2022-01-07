
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_ifindex; int ifr_name; } ;
typedef int ifr ;


 int PCAP_ERRBUF_SIZE ;
 int SIOCGIFINDEX ;
 int errno ;
 int ioctl (int,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
iface_get_id(int fd, const char *device, char *ebuf)
{
 struct ifreq ifr;

 memset(&ifr, 0, sizeof(ifr));
 strlcpy(ifr.ifr_name, device, sizeof(ifr.ifr_name));

 if (ioctl(fd, SIOCGIFINDEX, &ifr) == -1) {
  pcap_fmt_errmsg_for_errno(ebuf, PCAP_ERRBUF_SIZE,
      errno, "SIOCGIFINDEX");
  return -1;
 }

 return ifr.ifr_ifindex;
}
