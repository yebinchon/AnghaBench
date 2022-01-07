
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sockaddr_dl {int sdl_len; scalar_t__ sdl_slen; int sdl_alen; scalar_t__ sdl_nlen; scalar_t__ sdl_index; int sdl_family; } ;
struct sockaddr {int sa_len; int sa_data; void* sa_family; } ;
struct TYPE_2__ {int sa_data; void* sa_family; } ;
struct ifreq {int ifr_addr; TYPE_1__ ifr_hwaddr; int ifr_name; } ;
typedef int ifr ;
typedef int caddr_t ;


 int AF_LINK ;
 void* AF_UNSPEC ;
 int ETH_ALEN ;
 int IFNAMSIZ ;
 int LLADDR (struct sockaddr_dl*) ;
 int MSG_ERROR ;
 int PF_INET ;
 int SIOCADDMULTI ;
 int SIOCDELMULTI ;
 int SOCK_DGRAM ;
 int close (int) ;
 int errno ;
 scalar_t__ ioctl (int,int ,int ) ;
 int os_memcpy (int ,int const*,int ) ;
 int os_memset (struct ifreq*,int ,int) ;
 int os_strlcpy (int ,char const*,int ) ;
 int socket (int ,int ,int ) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int driver_wired_multi(const char *ifname, const u8 *addr, int add)
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

 ifr.ifr_hwaddr.sa_family = AF_UNSPEC;
 os_memcpy(ifr.ifr_hwaddr.sa_data, addr, ETH_ALEN);
 if (ioctl(s, add ? SIOCADDMULTI : SIOCDELMULTI, (caddr_t) &ifr) < 0) {
  wpa_printf(MSG_ERROR, "ioctl[SIOC{ADD/DEL}MULTI]: %s",
      strerror(errno));
  close(s);
  return -1;
 }
 close(s);
 return 0;
}
