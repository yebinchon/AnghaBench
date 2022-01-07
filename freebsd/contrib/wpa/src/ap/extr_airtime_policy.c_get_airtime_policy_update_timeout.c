
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hostapd_iface {TYPE_1__* conf; } ;
struct TYPE_2__ {unsigned int airtime_update_interval; } ;


 int MSG_ERROR ;
 int wpa_printf (int ,char*,unsigned int) ;

__attribute__((used)) static int get_airtime_policy_update_timeout(struct hostapd_iface *iface,
          unsigned int *sec,
          unsigned int *usec)
{
 unsigned int update_int = iface->conf->airtime_update_interval;

 if (!update_int) {
  wpa_printf(MSG_ERROR,
      "Airtime policy: Invalid airtime policy update interval %u",
      update_int);
  return -1;
 }

 *sec = update_int / 1000;
 *usec = (update_int % 1000) * 1000;

 return 0;
}
