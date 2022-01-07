
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {scalar_t__ agreed_to_steer; } ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int disassoc_low_ack; } ;


 int HOSTAPD_LEVEL_INFO ;
 int HOSTAPD_MODULE_IEEE80211 ;
 int WLAN_REASON_DISASSOC_LOW_ACK ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int const*) ;
 int ap_sta_disassociate (struct hostapd_data*,struct sta_info*,int ) ;
 int hostapd_drv_sta_disassoc (struct hostapd_data*,int const*,int ) ;
 int hostapd_logger (struct hostapd_data*,int const*,int ,int ,char*) ;

void hostapd_event_sta_low_ack(struct hostapd_data *hapd, const u8 *addr)
{
 struct sta_info *sta = ap_get_sta(hapd, addr);

 if (!sta || !hapd->conf->disassoc_low_ack || sta->agreed_to_steer)
  return;

 hostapd_logger(hapd, addr, HOSTAPD_MODULE_IEEE80211,
         HOSTAPD_LEVEL_INFO,
         "disconnected due to excessive missing ACKs");
 hostapd_drv_sta_disassoc(hapd, addr, WLAN_REASON_DISASSOC_LOW_ACK);
 ap_sta_disassociate(hapd, sta, WLAN_REASON_DISASSOC_LOW_ACK);
}
