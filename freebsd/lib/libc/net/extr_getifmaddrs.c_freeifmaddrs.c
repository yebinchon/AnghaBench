
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifmaddrs {int dummy; } ;


 int free (struct ifmaddrs*) ;

void
freeifmaddrs(struct ifmaddrs *ifmp)
{

 free(ifmp);
}
