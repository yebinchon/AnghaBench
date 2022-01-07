
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lagg_reqport {char* rp_ifname; } ;
struct ifaddrs {int ifa_name; } ;
typedef int ifconfig_handle_t ;


 scalar_t__ EINVAL ;
 scalar_t__ ENOENT ;
 int err (int,char*) ;
 scalar_t__ ifconfig_err_errno (int *) ;
 scalar_t__ ifconfig_lagg_get_laggport_status (int *,int ,struct lagg_reqport*) ;
 int printf (char*,char*) ;

__attribute__((used)) static void
print_laggport(ifconfig_handle_t *lifh, struct ifaddrs *ifa)
{
 struct lagg_reqport rp;

 if (ifconfig_lagg_get_laggport_status(lifh, ifa->ifa_name, &rp) < 0) {
  if ((ifconfig_err_errno(lifh) == EINVAL) ||
      (ifconfig_err_errno(lifh) == ENOENT)) {
   return;
  } else {
   err(1, "Failed to get lagg port status");
  }
 }

 printf("\tlaggdev: %s\n", rp.rp_ifname);
}
