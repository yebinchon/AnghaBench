
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; int sa_family; } ;
struct ifreq {int ifr_addr; int ifr_name; } ;
typedef int s ;
typedef int ifr ;


 int AF_INET ;
 int IPPROTO_RAW ;
 int SIOCGIFADDR ;
 int SOCK_RAW ;
 int bcopy (int *,int ,int) ;
 int bind (int,struct sockaddr*,int) ;
 int bzero (char*,int) ;
 int ioctl (int,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int perror (char*) ;
 int socket (int ,int ,int ) ;
 int strncpy (int ,char*,int) ;

int initdevice(char *device, int tout)
{
 struct sockaddr s;
 struct ifreq ifr;
 int fd;

 memset(&ifr, 0, sizeof(ifr));
 strncpy(ifr.ifr_name, device, sizeof ifr.ifr_name);

 if ((fd = socket(AF_INET, SOCK_RAW, IPPROTO_RAW)) < 0)
     {
  perror("socket(AF_INET, SOCK_RAW, IPPROTO_RAW)");
  return -1;
     }

 if (ioctl(fd, SIOCGIFADDR, &ifr) == -1)
     {
  perror("ioctl SIOCGIFADDR");
  return -1;
     }

 bzero((char *)&s, sizeof(s));
 s.sa_family = AF_INET;
 bcopy(&ifr.ifr_addr, s.sa_data, 4);
 if (bind(fd, &s, sizeof(s)) == -1)
  perror("bind");
 return fd;
}
