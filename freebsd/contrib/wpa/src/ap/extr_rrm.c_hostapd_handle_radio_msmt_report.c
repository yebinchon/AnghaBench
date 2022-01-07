
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int dialog_token; int* variable; } ;
struct TYPE_6__ {TYPE_1__ rrm; } ;
struct TYPE_7__ {TYPE_2__ u; } ;
struct TYPE_8__ {TYPE_3__ action; } ;
struct ieee80211_mgmt {int sa; TYPE_4__ u; } ;
struct hostapd_data {int dummy; } ;





 int MSG_DEBUG ;
 int WLAN_EID_MEASURE_REPORT ;
 int* get_ie (int const*,int,int ) ;
 int hostapd_handle_beacon_report (struct hostapd_data*,int ,int,int,int const*,int const) ;
 int hostapd_handle_lci_report (struct hostapd_data*,int,int const*,int const) ;
 int hostapd_handle_range_report (struct hostapd_data*,int,int const*,int const) ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static void hostapd_handle_radio_msmt_report(struct hostapd_data *hapd,
          const u8 *buf, size_t len)
{
 const struct ieee80211_mgmt *mgmt = (const struct ieee80211_mgmt *) buf;
 const u8 *pos, *ie, *end;
 u8 token, rep_mode;

 end = buf + len;
 token = mgmt->u.action.u.rrm.dialog_token;
 pos = mgmt->u.action.u.rrm.variable;

 while ((ie = get_ie(pos, end - pos, WLAN_EID_MEASURE_REPORT))) {
  if (ie[1] < 3) {
   wpa_printf(MSG_DEBUG, "Bad Measurement Report element");
   break;
  }

  rep_mode = ie[3];
  wpa_printf(MSG_DEBUG, "Measurement report mode 0x%x type %u",
      rep_mode, ie[4]);

  switch (ie[4]) {
  case 128:
   hostapd_handle_lci_report(hapd, token, ie + 2, ie[1]);
   break;
  case 129:
   hostapd_handle_range_report(hapd, token, ie + 2, ie[1]);
   break;
  case 130:
   hostapd_handle_beacon_report(hapd, mgmt->sa, token,
           rep_mode, ie + 2, ie[1]);
   break;
  default:
   wpa_printf(MSG_DEBUG,
       "Measurement report type %u is not supported",
       ie[4]);
   break;
  }

  pos = ie + ie[1] + 2;
 }
}
