
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int qos_map_set; scalar_t__ qos_map_set_len; } ;


 int WLAN_EID_QOS_MAP_SET ;
 int os_memcpy (scalar_t__*,int ,scalar_t__) ;

u8 * hostapd_eid_qos_map_set(struct hostapd_data *hapd, u8 *eid)
{
 u8 *pos = eid;
 u8 len = hapd->conf->qos_map_set_len;

 if (!len)
  return eid;

 *pos++ = WLAN_EID_QOS_MAP_SET;
 *pos++ = len;
 os_memcpy(pos, hapd->conf->qos_map_set, len);
 pos += len;

 return pos;
}
