
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ieee802_11_elems {int dummy; } ;
struct TYPE_3__ {int variable; } ;
struct TYPE_4__ {TYPE_1__ beacon; } ;
struct ieee80211_mgmt {TYPE_2__ u; } ;
struct hostapd_frame_info {int dummy; } ;
struct hostapd_data {int iface; } ;


 int IEEE80211_HDRLEN ;
 int MSG_INFO ;
 int ap_list_process_beacon (int ,struct ieee80211_mgmt const*,struct ieee802_11_elems*,struct hostapd_frame_info*) ;
 int ieee802_11_parse_elems (int ,size_t,struct ieee802_11_elems*,int ) ;
 int wpa_printf (int ,char*,unsigned long) ;

__attribute__((used)) static void handle_beacon(struct hostapd_data *hapd,
     const struct ieee80211_mgmt *mgmt, size_t len,
     struct hostapd_frame_info *fi)
{
 struct ieee802_11_elems elems;

 if (len < IEEE80211_HDRLEN + sizeof(mgmt->u.beacon)) {
  wpa_printf(MSG_INFO, "handle_beacon - too short payload (len=%lu)",
      (unsigned long) len);
  return;
 }

 (void) ieee802_11_parse_elems(mgmt->u.beacon.variable,
          len - (IEEE80211_HDRLEN +
          sizeof(mgmt->u.beacon)), &elems,
          0);

 ap_list_process_beacon(hapd->iface, mgmt, &elems, fi);
}
