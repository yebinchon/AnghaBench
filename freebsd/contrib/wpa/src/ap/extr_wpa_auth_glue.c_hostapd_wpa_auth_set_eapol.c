
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int wpa_eapol_variable ;
typedef int u8 ;
struct sta_info {TYPE_2__* eapol_sm; } ;
struct hostapd_data {int dummy; } ;
struct TYPE_5__ {int dot1xAuthEapolFramesTx; void* keyDone; TYPE_1__* eap_if; void* keyRun; int portControl; } ;
struct TYPE_4__ {void* eapKeyAvailable; } ;


 int Auto ;
 void* FALSE ;
 void* TRUE ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int const*) ;
 int ieee802_1x_notify_port_enabled (TYPE_2__*,int) ;
 int ieee802_1x_notify_port_valid (TYPE_2__*,int) ;
 int ieee802_1x_set_sta_authorized (struct hostapd_data*,struct sta_info*,int) ;

__attribute__((used)) static void hostapd_wpa_auth_set_eapol(void *ctx, const u8 *addr,
           wpa_eapol_variable var, int value)
{
 struct hostapd_data *hapd = ctx;
 struct sta_info *sta = ap_get_sta(hapd, addr);
 if (sta == ((void*)0))
  return;
 switch (var) {
 case 129:
  ieee802_1x_notify_port_enabled(sta->eapol_sm, value);
  break;
 case 128:
  ieee802_1x_notify_port_valid(sta->eapol_sm, value);
  break;
 case 135:
  ieee802_1x_set_sta_authorized(hapd, sta, value);
  break;
 case 130:
  if (sta->eapol_sm)
   sta->eapol_sm->portControl = Auto;
  break;
 case 131:
  if (sta->eapol_sm)
   sta->eapol_sm->keyRun = value ? TRUE : FALSE;
  break;
 case 133:
  if (sta->eapol_sm)
   sta->eapol_sm->eap_if->eapKeyAvailable =
    value ? TRUE : FALSE;
  break;
 case 132:
  if (sta->eapol_sm)
   sta->eapol_sm->keyDone = value ? TRUE : FALSE;
  break;
 case 134:
  if (sta->eapol_sm)
   sta->eapol_sm->dot1xAuthEapolFramesTx++;
  break;
 }
}
