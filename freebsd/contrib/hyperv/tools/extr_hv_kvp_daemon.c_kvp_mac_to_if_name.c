
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
 int free (char*) ;
 int freeifaddrs (struct ifaddrs*) ;
 int getifaddrs (struct ifaddrs**) ;
 char* strdup (int ) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int ) ;
 char toupper (char) ;

__attribute__((used)) static char *
kvp_mac_to_if_name(char *mac)
{
 char *if_name = ((void*)0);
 struct ifaddrs *ifaddrs_ptr;
 struct ifaddrs *head_ifaddrs_ptr;
 struct sockaddr_dl *sdl;
 int status;
 char *buf_ptr, *p;

 status = getifaddrs(&ifaddrs_ptr);

 if (status >= 0) {
  head_ifaddrs_ptr = ifaddrs_ptr;
  do {
   sdl = (struct sockaddr_dl *)(uintptr_t)ifaddrs_ptr->ifa_addr;
   if (sdl->sdl_type == IFT_ETHER) {
    buf_ptr = strdup(ether_ntoa((struct ether_addr *)(LLADDR(sdl))));
    if (buf_ptr != ((void*)0)) {
     for (p = buf_ptr; *p != '\0'; p++)
      *p = toupper(*p);

     if (strncmp(buf_ptr, mac, strlen(mac)) == 0) {

      if_name = strdup(ifaddrs_ptr->ifa_name);
      free(buf_ptr);
      break;
     } else
      free(buf_ptr);
    }
   }
  } while ((ifaddrs_ptr = ifaddrs_ptr->ifa_next) != ((void*)0));
  freeifaddrs(head_ifaddrs_ptr);
 }
 return (if_name);
}
