
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int u8 ;
typedef int u32 ;
struct sockaddr_dl {int sdl_family; scalar_t__ sdl_nlen; int sdl_alen; int sdl_data; } ;
struct if_msghdr {scalar_t__ ifm_type; int ifm_addrs; int ifm_msglen; } ;
typedef int dlpi_handle_t ;


 int AF_LINK ;
 int AF_ROUTE ;
 int CTL_NET ;
 int DLPI_PHYSADDR_MAX ;
 int DLPI_SUCCESS ;
 int DL_CURR_PHYS_ADDR ;
 int ESRCH ;
 int ETH_ALEN ;
 int * LLADDR (struct sockaddr_dl*) ;
 int MSG_ERROR ;
 int NET_RT_IFLIST ;
 int RTA_IFP ;
 scalar_t__ RTM_IFINFO ;
 int dlpi_close (int ) ;
 int dlpi_get_physaddr (int ,int ,int *,int*) ;
 int dlpi_open (char const*,int *,int ) ;
 int dlpi_strerror (int) ;
 int errno ;
 int os_free (int *) ;
 int * os_malloc (size_t) ;
 scalar_t__ os_memcmp (int ,char const*,scalar_t__) ;
 int os_memcpy (int *,int *,int ) ;
 scalar_t__ sysctl (int*,int,int *,size_t*,int *,int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static int eth_get(const char *device, u8 ea[ETH_ALEN])
{
 struct if_msghdr *ifm;
 struct sockaddr_dl *sdl;
 u_char *p, *buf;
 size_t len;
 int mib[] = { CTL_NET, AF_ROUTE, 0, AF_LINK, NET_RT_IFLIST, 0 };

 if (sysctl(mib, 6, ((void*)0), &len, ((void*)0), 0) < 0)
  return -1;
 if ((buf = os_malloc(len)) == ((void*)0))
  return -1;
 if (sysctl(mib, 6, buf, &len, ((void*)0), 0) < 0) {
  os_free(buf);
  return -1;
 }
 for (p = buf; p < buf + len; p += ifm->ifm_msglen) {
  ifm = (struct if_msghdr *)p;
  sdl = (struct sockaddr_dl *)(ifm + 1);
  if (ifm->ifm_type != RTM_IFINFO ||
      (ifm->ifm_addrs & RTA_IFP) == 0)
   continue;
  if (sdl->sdl_family != AF_LINK || sdl->sdl_nlen == 0 ||
      os_memcmp(sdl->sdl_data, device, sdl->sdl_nlen) != 0)
   continue;
  os_memcpy(ea, LLADDR(sdl), sdl->sdl_alen);
  break;
 }
 os_free(buf);

 if (p >= buf + len) {
  errno = ESRCH;
  return -1;
 }

 return 0;
}
