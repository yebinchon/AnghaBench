
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sta_info {int wpa_sm; } ;
typedef enum eapol_event { ____Placeholder_eapol_event } eapol_event ;




 int WPA_REAUTH_EAPOL ;
 int wpa_auth_sm_event (int ,int ) ;
 int wpa_auth_sm_notify (int ) ;

__attribute__((used)) static void ieee802_1x_eapol_event(void *ctx, void *sta_ctx,
       enum eapol_event type)
{

 struct sta_info *sta = sta_ctx;
 switch (type) {
 case 128:
  wpa_auth_sm_notify(sta->wpa_sm);
  break;
 case 129:
  wpa_auth_sm_event(sta->wpa_sm, WPA_REAUTH_EAPOL);
  break;
 }
}
