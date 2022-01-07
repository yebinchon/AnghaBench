
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddrs {int ifa_name; } ;
struct carpreq {int carpr_count; size_t carpr_state; int carpr_vhid; int carpr_advbase; int carpr_advskew; } ;
typedef int ifconfig_handle_t ;


 int CARP_MAXVHID ;
 char** carp_states ;
 scalar_t__ ifconfig_carp_get_info (int *,int ,struct carpreq*,int) ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_carp(ifconfig_handle_t *lifh, struct ifaddrs *ifa)
{
 struct carpreq carpr[CARP_MAXVHID];
 int i;

 if (ifconfig_carp_get_info(lifh, ifa->ifa_name, carpr, CARP_MAXVHID)) {
  return;
 }
 for (i = 0; i < carpr[0].carpr_count; i++) {
  printf("\tcarp: %s vhid %d advbase %d advskew %d",
      carp_states[carpr[i].carpr_state], carpr[i].carpr_vhid,
      carpr[i].carpr_advbase, carpr[i].carpr_advskew);
  printf("\n");
 }
}
