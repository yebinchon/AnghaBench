
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dl {scalar_t__ sdl_type; } ;
struct ifaddrs {int ifa_name; scalar_t__ ifa_addr; struct ifaddrs* ifa_next; } ;
struct ether_addr {int dummy; } ;


 scalar_t__ IFT_ETHER ;
 scalar_t__ LLADDR (struct sockaddr_dl*) ;
 int ether_ntoa (struct ether_addr*) ;
 int freeifaddrs (struct ifaddrs*) ;
 int getifaddrs (struct ifaddrs**) ;
 scalar_t__ strcmp (int ,char*) ;
 char* strdup (int ) ;

__attribute__((used)) static char *
kvp_if_name_to_mac(char *if_name)
{
 char *mac_addr = ((void*)0);
 struct ifaddrs *ifaddrs_ptr;
 struct ifaddrs *head_ifaddrs_ptr;
 struct sockaddr_dl *sdl;
 int status;

 status = getifaddrs(&ifaddrs_ptr);

 if (status >= 0) {
  head_ifaddrs_ptr = ifaddrs_ptr;
  do {
   sdl = (struct sockaddr_dl *)(uintptr_t)ifaddrs_ptr->ifa_addr;
   if ((sdl->sdl_type == IFT_ETHER) &&
       (strcmp(ifaddrs_ptr->ifa_name, if_name) == 0)) {
    mac_addr = strdup(ether_ntoa((struct ether_addr *)(LLADDR(sdl))));
    break;
   }
  } while ((ifaddrs_ptr = ifaddrs_ptr->ifa_next) != ((void*)0));
  freeifaddrs(head_ifaddrs_ptr);
 }

 return (mac_addr);
}
