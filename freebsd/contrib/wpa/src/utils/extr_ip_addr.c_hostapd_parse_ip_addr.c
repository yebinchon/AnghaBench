
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int v6; int v4; } ;
struct hostapd_ip_addr {int af; TYPE_1__ u; } ;


 int AF_INET ;
 int AF_INET6 ;
 scalar_t__ inet_aton (char const*,int *) ;
 scalar_t__ inet_pton (int ,char const*,int *) ;

int hostapd_parse_ip_addr(const char *txt, struct hostapd_ip_addr *addr)
{

 if (inet_aton(txt, &addr->u.v4)) {
  addr->af = AF_INET;
  return 0;
 }
 return -1;
}
