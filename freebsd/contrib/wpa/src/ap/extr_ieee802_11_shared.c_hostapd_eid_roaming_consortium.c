
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {TYPE_2__* conf; } ;
struct TYPE_4__ {int roaming_consortium_count; TYPE_1__* roaming_consortium; int interworking; } ;
struct TYPE_3__ {int len; int oi; } ;


 int WLAN_EID_ROAMING_CONSORTIUM ;
 int os_memcpy (int*,int ,int) ;

u8 * hostapd_eid_roaming_consortium(struct hostapd_data *hapd, u8 *eid)
{
 u8 *pos = eid;
 return pos;
}
