
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef void* u16 ;
struct sta_info {int dummy; } ;
struct TYPE_4__ {int reason_code; } ;
struct TYPE_5__ {TYPE_1__ deauth; } ;
struct ieee80211_mgmt {TYPE_2__ u; int bssid; int sa; int da; int frame_control; } ;
struct hostapd_data {int* own_addr; int drv_priv; TYPE_3__* driver; int msg_ctx; } ;
typedef int mgmt ;
struct TYPE_6__ {scalar_t__ (* send_frame ) (int ,int*,scalar_t__,int) ;} ;


 int ETH_ALEN ;
 int IEEE80211_FC (int ,int ) ;
 scalar_t__ IEEE80211_HDRLEN ;
 int MSG_DEBUG ;
 int WLAN_FC_STYPE_DEAUTH ;
 int WLAN_FC_TYPE_MGMT ;
 void* WLAN_REASON_PREV_AUTH_NOT_VALID ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int*) ;
 int ap_sta_deauthenticate (struct hostapd_data*,struct sta_info*,void*) ;
 void* atoi (char const*) ;
 int host_to_le16 (void*) ;
 int hostapd_drv_sta_deauth (struct hostapd_data*,int*,void*) ;
 int hostapd_drv_sta_remove (struct hostapd_data*,int*) ;
 int hostapd_free_stas (struct hostapd_data*) ;
 scalar_t__ hwaddr_aton (char const*,int*) ;
 int os_memcpy (int ,int*,int) ;
 int os_memset (struct ieee80211_mgmt*,int ,int) ;
 char* os_strstr (char const*,char*) ;
 int p2p_manager_disconnect (struct hostapd_data*,int ,void*,int*) ;
 scalar_t__ stub1 (int ,int*,scalar_t__,int) ;
 int wpa_dbg (int ,int ,char*,char const*) ;

int hostapd_ctrl_iface_deauthenticate(struct hostapd_data *hapd,
          const char *txtaddr)
{
 u8 addr[ETH_ALEN];
 struct sta_info *sta;
 const char *pos;
 u16 reason = WLAN_REASON_PREV_AUTH_NOT_VALID;

 wpa_dbg(hapd->msg_ctx, MSG_DEBUG, "CTRL_IFACE DEAUTHENTICATE %s",
  txtaddr);

 if (hwaddr_aton(txtaddr, addr))
  return -1;

 pos = os_strstr(txtaddr, " reason=");
 if (pos)
  reason = atoi(pos + 8);

 pos = os_strstr(txtaddr, " test=");
 if (pos) {
  struct ieee80211_mgmt mgmt;
  int encrypt;
  if (!hapd->drv_priv || !hapd->driver->send_frame)
   return -1;
  pos += 6;
  encrypt = atoi(pos);
  os_memset(&mgmt, 0, sizeof(mgmt));
  mgmt.frame_control = IEEE80211_FC(WLAN_FC_TYPE_MGMT,
        WLAN_FC_STYPE_DEAUTH);
  os_memcpy(mgmt.da, addr, ETH_ALEN);
  os_memcpy(mgmt.sa, hapd->own_addr, ETH_ALEN);
  os_memcpy(mgmt.bssid, hapd->own_addr, ETH_ALEN);
  mgmt.u.deauth.reason_code = host_to_le16(reason);
  if (hapd->driver->send_frame(hapd->drv_priv, (u8 *) &mgmt,
          IEEE80211_HDRLEN +
          sizeof(mgmt.u.deauth),
          encrypt) < 0)
   return -1;
  return 0;
 }
 if (os_strstr(txtaddr, " tx=0"))
  hostapd_drv_sta_remove(hapd, addr);
 else
  hostapd_drv_sta_deauth(hapd, addr, reason);
 sta = ap_get_sta(hapd, addr);
 if (sta)
  ap_sta_deauthenticate(hapd, sta, reason);
 else if (addr[0] == 0xff)
  hostapd_free_stas(hapd);

 return 0;
}
