
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct hostapd_data {TYPE_1__* conf; } ;
struct TYPE_2__ {int owe_transition_ssid_len; int owe_transition_ssid; int owe_transition_bssid; scalar_t__* owe_transition_ifname; } ;


 int ETH_ALEN ;
 int MSG_DEBUG ;
 int OUI_WFA ;
 int OWE_OUI_TYPE ;
 int WLAN_EID_VENDOR_SPECIFIC ;
 int WPA_PUT_BE24 (int *,int ) ;
 int hostapd_eid_owe_trans_enabled (struct hostapd_data*) ;
 size_t hostapd_eid_owe_trans_len (struct hostapd_data*) ;
 int hostapd_owe_trans_get_info (struct hostapd_data*) ;
 int os_memcpy (int *,int ,int ) ;
 int wpa_printf (int ,char*) ;

u8 * hostapd_eid_owe_trans(struct hostapd_data *hapd, u8 *eid,
      size_t len)
{
 return eid;

}
