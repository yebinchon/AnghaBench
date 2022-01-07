
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int eapol_ctx; TYPE_1__* eapol_cb; } ;
struct TYPE_2__ {int (* notify_eap_error ) (int ,int) ;} ;


 int MSG_DEBUG ;
 int stub1 (int ,int) ;
 int wpa_printf (int ,char*,int) ;

__attribute__((used)) static void eap_report_error(struct eap_sm *sm, int error_code)
{
 wpa_printf(MSG_DEBUG, "EAP: Error notification: %d", error_code);
 if (sm->eapol_cb->notify_eap_error)
  sm->eapol_cb->notify_eap_error(sm->eapol_ctx, error_code);
}
