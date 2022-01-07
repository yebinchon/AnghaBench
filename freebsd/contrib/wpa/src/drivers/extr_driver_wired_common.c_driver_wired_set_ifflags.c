
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_flags; int ifr_name; } ;
typedef int ifr ;
typedef int caddr_t ;


 int IFNAMSIZ ;
 int MSG_ERROR ;
 int PF_INET ;
 int SIOCSIFFLAGS ;
 int SOCK_DGRAM ;
 int close (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,int ) ;
 int os_memset (struct ifreq*,int ,int) ;
 int os_strlcpy (int ,char const*,int ) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int driver_wired_set_ifflags(const char *ifname, int flags)
{
 struct ifreq ifr;
 int s;

 s = socket(PF_INET, SOCK_DGRAM, 0);
 if (s < 0) {
  wpa_printf(MSG_ERROR, "socket: %s", strerror(errno));
  return -1;
 }

 os_memset(&ifr, 0, sizeof(ifr));
 os_strlcpy(ifr.ifr_name, ifname, IFNAMSIZ);
 ifr.ifr_flags = flags & 0xffff;
 if (ioctl(s, SIOCSIFFLAGS, (caddr_t) &ifr) < 0) {
  wpa_printf(MSG_ERROR, "ioctl[SIOCSIFFLAGS]: %s",
      strerror(errno));
  close(s);
  return -1;
 }
 close(s);
 return 0;
}
