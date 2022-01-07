
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ieee80211_hdr {int IEEE80211_SA_FROMDS; int IEEE80211_BSSID_FROMDS; int IEEE80211_DA_FROMDS; int frame_control; } ;
typedef int hdr ;


 int ETH_ALEN ;
 int IEEE80211_FC (int ,int ) ;
 int WLAN_FC_FROMDS ;
 int WLAN_FC_STYPE_DATA ;
 int WLAN_FC_TYPE_DATA ;
 int host_to_le16 (int ) ;
 int hostap_send_mlme (void*,int *,int,int ,int ,int *,int ) ;
 int os_memcpy (int ,int const*,int ) ;
 int os_memset (struct ieee80211_hdr*,int ,int) ;

__attribute__((used)) static void wpa_driver_hostap_poll_client(void *priv, const u8 *own_addr,
       const u8 *addr, int qos)
{
 struct ieee80211_hdr hdr;

 os_memset(&hdr, 0, sizeof(hdr));
 hdr.frame_control = IEEE80211_FC(WLAN_FC_TYPE_DATA,
      WLAN_FC_STYPE_DATA);

 hdr.frame_control |=
  host_to_le16(WLAN_FC_FROMDS);
 os_memcpy(hdr.IEEE80211_DA_FROMDS, addr, ETH_ALEN);
 os_memcpy(hdr.IEEE80211_BSSID_FROMDS, own_addr, ETH_ALEN);
 os_memcpy(hdr.IEEE80211_SA_FROMDS, own_addr, ETH_ALEN);

 hostap_send_mlme(priv, (u8 *)&hdr, sizeof(hdr), 0, 0, ((void*)0), 0);
}
