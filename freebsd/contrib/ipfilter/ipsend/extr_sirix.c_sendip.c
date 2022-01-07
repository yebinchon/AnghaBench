
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_raw {int sr_ifname; } ;
struct TYPE_2__ {int sa_data; } ;
struct ifreq {TYPE_1__ ifr_addr; int ifr_name; } ;
struct ether_header {int ether_shost; } ;
typedef int sr ;
typedef int ifr ;


 int SIOCGIFADDR ;
 int getsockname (int,struct sockaddr_raw*,int*) ;
 int ioctl (int,int ,struct ifreq*) ;
 int memcpy (int ,int ,int) ;
 int memset (struct ifreq*,int ,int) ;
 int perror (char*) ;
 int strncpy (int ,int ,int) ;
 int write (int,char*,int) ;

int sendip(int fd, char *pkt, int len)
{
 struct sockaddr_raw sr;
 int srlen = sizeof(sr);
 struct ifreq ifr;
 struct ether_header *eh = (struct ether_header *)pkt;

 if (getsockname(fd, &sr, &srlen) == -1)
     {
  perror("getsockname");
  return -1;
     }

 memset(&ifr, 0, sizeof(ifr));
 strncpy(ifr.ifr_name, sr.sr_ifname, sizeof ifr.ifr_name);

 if (ioctl(fd, SIOCGIFADDR, &ifr) == -1)
     {
  perror("ioctl SIOCGIFADDR");
  return -1;
     }

 memcpy(eh->ether_shost, ifr.ifr_addr.sa_data, sizeof(eh->ether_shost));

 if (write(fd, pkt, len) == -1)
     {
  perror("send");
  return -1;
     }

 return len;
}
