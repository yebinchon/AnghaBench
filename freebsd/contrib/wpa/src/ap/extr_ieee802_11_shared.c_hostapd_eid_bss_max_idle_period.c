
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {scalar_t__ ap_max_inactivity; } ;


 int WLAN_EID_BSS_MAX_IDLE_PERIOD ;
 int WPA_PUT_LE16 (int *,unsigned int) ;

u8 * hostapd_eid_bss_max_idle_period(struct hostapd_data *hapd, u8 *eid)
{
 u8 *pos = eid;
 return pos;
}
