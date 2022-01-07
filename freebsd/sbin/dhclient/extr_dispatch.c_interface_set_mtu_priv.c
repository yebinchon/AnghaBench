
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int16_t ;
struct ifreq {scalar_t__ ifr_mtu; int ifr_name; } ;
typedef int ifr ;
typedef struct ifreq* caddr_t ;


 int AF_INET ;
 int SIOCGIFMTU ;
 int SIOCSIFMTU ;
 int SOCK_DGRAM ;
 int close (int) ;
 int errno ;
 int error (char*) ;
 int ioctl (int,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;
 int strlcpy (int ,char*,int) ;
 int warning (char*,scalar_t__,int ) ;

void
interface_set_mtu_priv(char *ifname, u_int16_t mtu)
{
 struct ifreq ifr;
 int sock;
 u_int16_t old_mtu;

 if ((sock = socket(AF_INET, SOCK_DGRAM, 0)) == -1)
  error("Can't create socket");

 memset(&ifr, 0, sizeof(ifr));
 old_mtu = 0;

 strlcpy(ifr.ifr_name, ifname, sizeof(ifr.ifr_name));

 if (ioctl(sock, SIOCGIFMTU, (caddr_t)&ifr) == -1)
  warning("SIOCGIFMTU failed (%s): %s", ifname,
   strerror(errno));
 else
  old_mtu = ifr.ifr_mtu;

 if (mtu != old_mtu) {
  ifr.ifr_mtu = mtu;

  if (ioctl(sock, SIOCSIFMTU, &ifr) == -1)
   warning("SIOCSIFMTU failed (%d): %s", mtu,
    strerror(errno));
 }

 close(sock);
}
