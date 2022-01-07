
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int reason_code; } ;
struct TYPE_4__ {TYPE_1__ deauth; } ;
struct ieee80211_mgmt {TYPE_2__ u; int bssid; int sa; int da; int frame_control; } ;
struct hostapd_data {int const* own_addr; } ;
typedef int reply ;


 int ETH_ALEN ;
 int IEEE80211_FC (int ,int ) ;
 int IEEE80211_HDRLEN ;
 int MSG_INFO ;
 int WLAN_FC_STYPE_DEAUTH ;
 int WLAN_FC_TYPE_MGMT ;
 int errno ;
 int host_to_le16 (int ) ;
 scalar_t__ hostapd_drv_send_mlme (struct hostapd_data*,struct ieee80211_mgmt*,int,int ) ;
 int os_memcpy (int ,int const*,int ) ;
 int os_memset (struct ieee80211_mgmt*,int ,int) ;
 int strerror (int ) ;
 int wpa_printf (int ,char*,int ) ;

__attribute__((used)) static void send_deauth(struct hostapd_data *hapd, const u8 *addr,
   u16 reason_code)
{
 int send_len;
 struct ieee80211_mgmt reply;

 os_memset(&reply, 0, sizeof(reply));
 reply.frame_control =
  IEEE80211_FC(WLAN_FC_TYPE_MGMT, WLAN_FC_STYPE_DEAUTH);
 os_memcpy(reply.da, addr, ETH_ALEN);
 os_memcpy(reply.sa, hapd->own_addr, ETH_ALEN);
 os_memcpy(reply.bssid, hapd->own_addr, ETH_ALEN);

 send_len = IEEE80211_HDRLEN + sizeof(reply.u.deauth);
 reply.u.deauth.reason_code = host_to_le16(reason_code);

 if (hostapd_drv_send_mlme(hapd, &reply, send_len, 0) < 0)
  wpa_printf(MSG_INFO, "Failed to send deauth: %s",
      strerror(errno));
}
