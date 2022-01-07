
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {scalar_t__ ifr_data; int ifr_name; } ;
struct ifaddrs {char* ifa_name; struct ifaddrs* ifa_next; } ;
struct if_data {int dummy; } ;
typedef int ifr ;
typedef scalar_t__ caddr_t ;


 int AF_INET ;
 int SIOCGIFDATA ;
 int SOCK_DGRAM ;
 int bzero (struct ifreq*,int) ;
 scalar_t__ close (int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int freeifaddrs (struct ifaddrs*) ;
 int getifaddrs (struct ifaddrs**) ;
 int ioctl (int,int ,scalar_t__) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,char*,int) ;
 scalar_t__ strlen (char*) ;
 scalar_t__ strncmp (char*,char*,scalar_t__) ;

int
if_exists(char *ifname)
{
 int s;
 struct ifreq ifr;
 struct if_data ifrdat;

 if ((s = socket(AF_INET, SOCK_DGRAM, 0)) == -1)
  err(1, "socket");
 bzero(&ifr, sizeof(ifr));
 if (strlcpy(ifr.ifr_name, ifname, sizeof(ifr.ifr_name)) >=
  sizeof(ifr.ifr_name))
   errx(1, "main ifr_name: strlcpy");
 ifr.ifr_data = (caddr_t)&ifrdat;
 if (ioctl(s, SIOCGIFDATA, (caddr_t)&ifr) == -1)
  return (0);
 if (close(s))
  err(1, "close");

 return (1);

}
