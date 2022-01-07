
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sta_info {TYPE_2__* eapol_sm; } ;
struct hostapd_data {int dummy; } ;
struct TYPE_4__ {TYPE_1__* eap_if; } ;
struct TYPE_3__ {int eapKeyAvailable; } ;


 int TRUE ;
 int eapol_auth_step (TYPE_2__*) ;

__attribute__((used)) static int ieee802_1x_sta_key_available(struct hostapd_data *hapd,
     struct sta_info *sta, void *ctx)
{
 if (sta->eapol_sm) {
  sta->eapol_sm->eap_if->eapKeyAvailable = TRUE;
  eapol_auth_step(sta->eapol_sm);
 }
 return 0;
}
