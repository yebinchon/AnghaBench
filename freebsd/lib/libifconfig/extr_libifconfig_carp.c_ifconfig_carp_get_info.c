
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {scalar_t__ ifr_data; int ifr_name; } ;
struct carpreq {int carpr_count; } ;
typedef int ifconfig_handle_t ;
typedef scalar_t__ caddr_t ;


 int AF_LOCAL ;
 int SIOCGVH ;
 int bzero (struct carpreq*,int) ;
 scalar_t__ ifconfig_ioctlwrap (int *,int ,int ,struct ifreq*) ;
 int strlcpy (int ,char const*,int) ;

int
ifconfig_carp_get_info(ifconfig_handle_t *h, const char *name,
    struct carpreq *carpr, int ncarpr)
{
 struct ifreq ifr;

 bzero(carpr, sizeof(struct carpreq) * ncarpr);
 carpr[0].carpr_count = ncarpr;
 strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));
 ifr.ifr_data = (caddr_t)carpr;

 if (ifconfig_ioctlwrap(h, AF_LOCAL, SIOCGVH, &ifr) != 0) {
  return (-1);
 }

 return (0);
}
