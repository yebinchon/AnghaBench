
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct hostapd_data {TYPE_2__* iconf; TYPE_1__* conf; } ;
struct TYPE_4__ {unsigned int beacon_int; } ;
struct TYPE_3__ {unsigned int bss_load_update_period; } ;


 int MSG_ERROR ;
 int wpa_printf (int ,char*,unsigned int,unsigned int) ;

__attribute__((used)) static int get_bss_load_update_timeout(struct hostapd_data *hapd,
           unsigned int *sec, unsigned int *usec)
{
 unsigned int update_period = hapd->conf->bss_load_update_period;
 unsigned int beacon_int = hapd->iconf->beacon_int;
 unsigned int update_timeout;

 if (!update_period || !beacon_int) {
  wpa_printf(MSG_ERROR,
      "BSS Load: Invalid BSS load update configuration (period=%u beacon_int=%u)",
      update_period, beacon_int);
  return -1;
 }

 update_timeout = update_period * beacon_int;

 *sec = ((update_timeout / 1000) * 1024) / 1000;
 *usec = (update_timeout % 1000) * 1024;

 return 0;
}
