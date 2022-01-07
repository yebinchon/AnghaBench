
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dl {scalar_t__ sdl_alen; scalar_t__ sdl_type; scalar_t__ sdl_nlen; } ;
struct ifaddrs {scalar_t__ ifa_addr; } ;
struct ether_addr {int dummy; } ;
typedef int ifconfig_handle_t ;


 scalar_t__ ETHER_ADDR_LEN ;
 scalar_t__ IFT_BRIDGE ;
 scalar_t__ IFT_ETHER ;
 scalar_t__ IFT_L2VLAN ;
 scalar_t__ LLADDR (struct sockaddr_dl*) ;
 int NI_MAXHOST ;
 int ether_ntoa_r (struct ether_addr*,char*) ;
 char* link_ntoa (struct sockaddr_dl*) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
print_link_addr(ifconfig_handle_t *lifh, struct ifaddrs *ifa)
{
 char addr_buf[NI_MAXHOST];
 struct sockaddr_dl *sdl;
 int n;

 sdl = (struct sockaddr_dl *)ifa->ifa_addr;
 if ((sdl != ((void*)0)) && (sdl->sdl_alen > 0)) {
  if (((sdl->sdl_type == IFT_ETHER) ||
      (sdl->sdl_type == IFT_L2VLAN) ||
      (sdl->sdl_type == IFT_BRIDGE)) &&
      (sdl->sdl_alen == ETHER_ADDR_LEN)) {
   ether_ntoa_r((struct ether_addr *)LLADDR(sdl),
       addr_buf);
   printf("\tether %s\n", addr_buf);
  } else {
   n = sdl->sdl_nlen > 0 ? sdl->sdl_nlen + 1 : 0;

   printf("\tlladdr %s\n", link_ntoa(sdl) + n);
  }
 }
}
