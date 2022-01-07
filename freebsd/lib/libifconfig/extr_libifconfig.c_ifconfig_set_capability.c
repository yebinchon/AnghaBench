
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifreq {int ifr_reqcap; int ifr_name; } ;
struct ifconfig_capabilities {int curcap; int reqcap; } ;
typedef int ifr ;
typedef int ifconfig_handle_t ;


 int AF_LOCAL ;
 int SIOCSIFCAP ;
 scalar_t__ ifconfig_get_capability (int *,char const*,struct ifconfig_capabilities*) ;
 scalar_t__ ifconfig_ioctlwrap (int *,int ,int ,struct ifreq*) ;
 int memset (struct ifreq*,int ,int) ;
 int strlcpy (int ,char const*,int) ;

int
ifconfig_set_capability(ifconfig_handle_t *h, const char *name,
    const int capability)
{
 struct ifreq ifr;
 struct ifconfig_capabilities ifcap;
 int flags, value;

 memset(&ifr, 0, sizeof(ifr));

 if (ifconfig_get_capability(h, name, &ifcap) != 0) {
  return (-1);
 }

 value = capability;
 flags = ifcap.curcap;
 if (value < 0) {
  value = -value;
  flags &= ~value;
 } else {
  flags |= value;
 }
 flags &= ifcap.reqcap;

 (void)strlcpy(ifr.ifr_name, name, sizeof(ifr.ifr_name));





 ifr.ifr_reqcap = flags;
 if (ifconfig_ioctlwrap(h, AF_LOCAL, SIOCSIFCAP, &ifr) < 0) {
  return (-1);
 }
 return (0);
}
