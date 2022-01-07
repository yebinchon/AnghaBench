
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sockaddr_dl {int dummy; } ;
struct ifaddrs {char* ifa_name; TYPE_1__* ifa_addr; struct ifaddrs* ifa_next; } ;
struct if_nameindex {char* if_name; scalar_t__ if_index; } ;
struct TYPE_2__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_LINK ;
 scalar_t__ LLINDEX (struct sockaddr_dl*) ;
 int freeifaddrs (struct ifaddrs*) ;
 scalar_t__ getifaddrs (struct ifaddrs**) ;
 char* malloc (unsigned int) ;
 int strcpy (char*,char*) ;
 scalar_t__ strlen (char*) ;

struct if_nameindex *
if_nameindex(void)
{
 struct ifaddrs *ifaddrs, *ifa;
 unsigned int ni;
 int nbytes;
 struct if_nameindex *ifni, *ifni2;
 char *cp;

 if (getifaddrs(&ifaddrs) < 0)
  return(((void*)0));





 ni = 0;
 nbytes = 0;
 for (ifa = ifaddrs; ifa != ((void*)0); ifa = ifa->ifa_next) {
  if (ifa->ifa_addr &&
      ifa->ifa_addr->sa_family == AF_LINK) {
   nbytes += strlen(ifa->ifa_name) + 1;
   ni++;
  }
 }






 cp = malloc((ni + 1) * sizeof(struct if_nameindex) + nbytes);
 ifni = (struct if_nameindex *)cp;
 if (ifni == ((void*)0))
  goto out;
 cp += (ni + 1) * sizeof(struct if_nameindex);






 ifni2 = ifni;
 for (ifa = ifaddrs; ifa != ((void*)0); ifa = ifa->ifa_next) {
  if (ifa->ifa_addr &&
      ifa->ifa_addr->sa_family == AF_LINK) {
   ifni2->if_index =
       LLINDEX((struct sockaddr_dl*)ifa->ifa_addr);
   ifni2->if_name = cp;
   strcpy(cp, ifa->ifa_name);
   ifni2++;
   cp += strlen(cp) + 1;
  }
 }



 ifni2->if_index = 0;
 ifni2->if_name = ((void*)0);
out:
 freeifaddrs(ifaddrs);
 return(ifni);
}
