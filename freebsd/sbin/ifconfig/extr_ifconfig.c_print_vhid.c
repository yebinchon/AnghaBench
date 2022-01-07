
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {struct if_data* ifa_data; } ;
struct if_data {scalar_t__ ifi_vhid; } ;


 int printf (char*,scalar_t__) ;

void
print_vhid(const struct ifaddrs *ifa, const char *s)
{
 struct if_data *ifd;

 if (ifa->ifa_data == ((void*)0))
  return;

 ifd = ifa->ifa_data;
 if (ifd->ifi_vhid == 0)
  return;

 printf(" vhid %d", ifd->ifi_vhid);
}
