
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_reqcap; int ifr_curcap; int ifr_name; } ;
struct ifconfig_capabilities {int reqcap; int curcap; } ;
typedef int ifr ;
typedef int ifconfig_handle_t ;


 int AF_LOCAL ;
 int SIOCGIFCAP ;
 scalar_t__ ifconfig_ioctlwrap (int *,int ,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int strlcpy (int ,char const*,int) ;

int
ifconfig_get_capability(ifconfig_handle_t *h, const char *name,
    struct ifconfig_capabilities *capability)
{
 struct ifreq ifr;

 memset(&ifr, 0, sizeof(ifr));
 (void)strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));

 if (ifconfig_ioctlwrap(h, AF_LOCAL, SIOCGIFCAP, &ifr) < 0) {
  return (-1);
 }
 capability->curcap = ifr.ifr_curcap;
 capability->reqcap = ifr.ifr_reqcap;
 return (0);
}
