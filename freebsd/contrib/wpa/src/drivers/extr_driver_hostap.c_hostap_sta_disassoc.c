
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_3__ {int reason_code; } ;
struct TYPE_4__ {TYPE_1__ disassoc; } ;
struct ieee80211_mgmt {TYPE_2__ u; int bssid; int sa; int da; int frame_control; } ;
struct hostap_driver_data {int dummy; } ;
typedef int mgmt ;


 int ETH_ALEN ;
 int IEEE80211_FC (int ,int ) ;
 scalar_t__ IEEE80211_HDRLEN ;
 int WLAN_FC_STYPE_DISASSOC ;
 int WLAN_FC_TYPE_MGMT ;
 int host_to_le16 (int ) ;
 int hostap_send_mlme (struct hostap_driver_data*,int *,scalar_t__,int ,int ,int *,int ) ;
 int memcpy (int ,int const*,int ) ;
 int memset (struct ieee80211_mgmt*,int ,int) ;

__attribute__((used)) static int hostap_sta_disassoc(void *priv, const u8 *own_addr, const u8 *addr,
          u16 reason)
{
 struct hostap_driver_data *drv = priv;
 struct ieee80211_mgmt mgmt;

 memset(&mgmt, 0, sizeof(mgmt));
 mgmt.frame_control = IEEE80211_FC(WLAN_FC_TYPE_MGMT,
       WLAN_FC_STYPE_DISASSOC);
 memcpy(mgmt.da, addr, ETH_ALEN);
 memcpy(mgmt.sa, own_addr, ETH_ALEN);
 memcpy(mgmt.bssid, own_addr, ETH_ALEN);
 mgmt.u.disassoc.reason_code = host_to_le16(reason);
 return hostap_send_mlme(drv, (u8 *) &mgmt, IEEE80211_HDRLEN +
     sizeof(mgmt.u.disassoc), 0, 0, ((void*)0), 0);
}
