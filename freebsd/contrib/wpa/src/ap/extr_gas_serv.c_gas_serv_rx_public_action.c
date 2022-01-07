
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {scalar_t__ category; } ;
struct TYPE_5__ {TYPE_1__ action; } ;
struct ieee80211_mgmt {int* sa; int bssid; TYPE_2__ u; } ;
struct hostapd_data {TYPE_3__* conf; } ;
struct TYPE_6__ {int gas_address3; } ;


 int IEEE80211_HDRLEN ;
 scalar_t__ WLAN_ACTION_PROTECTED_DUAL ;
 scalar_t__ WLAN_ACTION_PUBLIC ;


 int gas_serv_rx_gas_comeback_req (struct hostapd_data*,int const*,int const*,size_t,int,int) ;
 int gas_serv_rx_gas_initial_req (struct hostapd_data*,int const*,int const*,size_t,int,int) ;
 int is_broadcast_ether_addr (int ) ;

__attribute__((used)) static void gas_serv_rx_public_action(void *ctx, const u8 *buf, size_t len,
          int freq)
{
 struct hostapd_data *hapd = ctx;
 const struct ieee80211_mgmt *mgmt;
 const u8 *sa, *data;
 int prot, std_addr3;

 mgmt = (const struct ieee80211_mgmt *) buf;
 if (len < IEEE80211_HDRLEN + 2)
  return;
 if (mgmt->u.action.category != WLAN_ACTION_PUBLIC &&
     mgmt->u.action.category != WLAN_ACTION_PROTECTED_DUAL)
  return;





 prot = mgmt->u.action.category == WLAN_ACTION_PROTECTED_DUAL;
 sa = mgmt->sa;
 if (hapd->conf->gas_address3 == 1)
  std_addr3 = 1;
 else if (hapd->conf->gas_address3 == 2)
  std_addr3 = 0;
 else
  std_addr3 = is_broadcast_ether_addr(mgmt->bssid);
 len -= IEEE80211_HDRLEN + 1;
 data = buf + IEEE80211_HDRLEN + 1;
 switch (data[0]) {
 case 128:
  gas_serv_rx_gas_initial_req(hapd, sa, data + 1, len - 1, prot,
         std_addr3);
  break;
 case 129:
  gas_serv_rx_gas_comeback_req(hapd, sa, data + 1, len - 1, prot,
          std_addr3);
  break;
 }
}
