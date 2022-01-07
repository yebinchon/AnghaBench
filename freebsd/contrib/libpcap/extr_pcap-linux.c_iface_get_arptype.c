
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int sa_family; } ;
struct ifreq {TYPE_1__ ifr_hwaddr; int ifr_name; } ;
typedef int ifr ;


 scalar_t__ ENODEV ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_NO_SUCH_DEVICE ;
 int SIOCGIFHWADDR ;
 scalar_t__ errno ;
 int ioctl (int,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,scalar_t__,char*) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
iface_get_arptype(int fd, const char *device, char *ebuf)
{
 struct ifreq ifr;

 memset(&ifr, 0, sizeof(ifr));
 strlcpy(ifr.ifr_name, device, sizeof(ifr.ifr_name));

 if (ioctl(fd, SIOCGIFHWADDR, &ifr) == -1) {
  pcap_fmt_errmsg_for_errno(ebuf, PCAP_ERRBUF_SIZE,
      errno, "SIOCGIFHWADDR");
  if (errno == ENODEV) {



   return PCAP_ERROR_NO_SUCH_DEVICE;
  }
  return PCAP_ERROR;
 }

 return ifr.ifr_hwaddr.sa_family;
}
