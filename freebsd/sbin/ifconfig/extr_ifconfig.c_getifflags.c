
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_flags; int ifr_flagshigh; int ifr_name; } ;
typedef int my_ifr ;
typedef int caddr_t ;


 int AF_LOCAL ;
 int Perror (char*) ;
 int SIOCGIFFLAGS ;
 int SOCK_DGRAM ;
 int close (int) ;
 int err (int,char*) ;
 int exit (int) ;
 scalar_t__ ioctl (int,int ,int ) ;
 int memset (struct ifreq*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
getifflags(const char *ifname, int us)
{
 struct ifreq my_ifr;
 int s;

 memset(&my_ifr, 0, sizeof(my_ifr));
 (void) strlcpy(my_ifr.ifr_name, ifname, sizeof(my_ifr.ifr_name));
 if (us < 0) {
  if ((s = socket(AF_LOCAL, SOCK_DGRAM, 0)) < 0)
   err(1, "socket(family AF_LOCAL,SOCK_DGRAM");
 } else
  s = us;
  if (ioctl(s, SIOCGIFFLAGS, (caddr_t)&my_ifr) < 0) {
   Perror("ioctl (SIOCGIFFLAGS)");
   exit(1);
  }
 if (us < 0)
  close(s);
 return ((my_ifr.ifr_flags & 0xffff) | (my_ifr.ifr_flagshigh << 16));
}
