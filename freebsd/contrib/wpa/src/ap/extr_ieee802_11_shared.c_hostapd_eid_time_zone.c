
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int time_advertisement; int time_zone; } ;


 int WLAN_EID_TIME_ZONE ;
 int os_memcpy (int *,int ,size_t) ;
 size_t os_strlen (int ) ;

u8 * hostapd_eid_time_zone(struct hostapd_data *hapd, u8 *eid)
{
 size_t len;

 if (hapd->conf->time_advertisement != 2 || !hapd->conf->time_zone)
  return eid;

 len = os_strlen(hapd->conf->time_zone);

 *eid++ = WLAN_EID_TIME_ZONE;
 *eid++ = len;
 os_memcpy(eid, hapd->conf->time_zone, len);
 eid += len;

 return eid;
}
