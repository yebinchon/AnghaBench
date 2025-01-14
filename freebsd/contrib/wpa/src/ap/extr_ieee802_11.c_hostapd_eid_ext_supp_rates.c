
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {TYPE_3__* iconf; TYPE_2__* iface; } ;
struct TYPE_6__ {scalar_t__ require_vht; scalar_t__ ieee80211ac; scalar_t__ require_ht; scalar_t__ ieee80211n; } ;
struct TYPE_5__ {int num_rates; TYPE_1__* current_rates; } ;
struct TYPE_4__ {int rate; int flags; } ;


 int BSS_MEMBERSHIP_SELECTOR_HT_PHY ;
 int BSS_MEMBERSHIP_SELECTOR_VHT_PHY ;
 int HOSTAPD_RATE_BASIC ;
 int WLAN_EID_EXT_SUPP_RATES ;

u8 * hostapd_eid_ext_supp_rates(struct hostapd_data *hapd, u8 *eid)
{
 u8 *pos = eid;
 int i, num, count;

 if (hapd->iface->current_rates == ((void*)0))
  return eid;

 num = hapd->iface->num_rates;
 if (hapd->iconf->ieee80211n && hapd->iconf->require_ht)
  num++;
 if (hapd->iconf->ieee80211ac && hapd->iconf->require_vht)
  num++;
 if (num <= 8)
  return eid;
 num -= 8;

 *pos++ = WLAN_EID_EXT_SUPP_RATES;
 *pos++ = num;
 for (i = 0, count = 0; i < hapd->iface->num_rates && count < num + 8;
      i++) {
  count++;
  if (count <= 8)
   continue;
  *pos = hapd->iface->current_rates[i].rate / 5;
  if (hapd->iface->current_rates[i].flags & HOSTAPD_RATE_BASIC)
   *pos |= 0x80;
  pos++;
 }

 if (hapd->iconf->ieee80211n && hapd->iconf->require_ht) {
  count++;
  if (count > 8)
   *pos++ = 0x80 | BSS_MEMBERSHIP_SELECTOR_HT_PHY;
 }

 if (hapd->iconf->ieee80211ac && hapd->iconf->require_vht) {
  count++;
  if (count > 8)
   *pos++ = 0x80 | BSS_MEMBERSHIP_SELECTOR_VHT_PHY;
 }

 return pos;
}
