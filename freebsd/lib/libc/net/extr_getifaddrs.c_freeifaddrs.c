
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {int dummy; } ;


 int free (struct ifaddrs*) ;

void
freeifaddrs(struct ifaddrs *ifp)
{

 free(ifp);
}
