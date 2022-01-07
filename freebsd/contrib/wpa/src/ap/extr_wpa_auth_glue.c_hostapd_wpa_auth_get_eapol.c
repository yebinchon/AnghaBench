
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wpa_eapol_variable ;
typedef int u8 ;
struct sta_info {TYPE_2__* eapol_sm; } ;
struct hostapd_data {int dummy; } ;
struct TYPE_4__ {int keyRun; TYPE_1__* eap_if; } ;
struct TYPE_3__ {int eapKeyAvailable; } ;




 struct sta_info* ap_get_sta (struct hostapd_data*,int const*) ;

__attribute__((used)) static int hostapd_wpa_auth_get_eapol(void *ctx, const u8 *addr,
          wpa_eapol_variable var)
{
 struct hostapd_data *hapd = ctx;
 struct sta_info *sta = ap_get_sta(hapd, addr);
 if (sta == ((void*)0) || sta->eapol_sm == ((void*)0))
  return -1;
 switch (var) {
 case 128:
  return sta->eapol_sm->keyRun;
 case 129:
  return sta->eapol_sm->eap_if->eapKeyAvailable;
 default:
  return -1;
 }
}
