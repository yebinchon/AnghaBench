
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct eap_sm {int eapol_ctx; TYPE_1__* eapol_cb; } ;
struct TYPE_2__ {int (* notify_status ) (int ,char const*,char const*) ;} ;


 int MSG_DEBUG ;
 int stub1 (int ,char const*,char const*) ;
 int wpa_printf (int ,char*,char const*,char const*) ;

__attribute__((used)) static void eap_notify_status(struct eap_sm *sm, const char *status,
          const char *parameter)
{
 wpa_printf(MSG_DEBUG, "EAP: Status notification: %s (param=%s)",
     status, parameter);
 if (sm->eapol_cb->notify_status)
  sm->eapol_cb->notify_status(sm->eapol_ctx, status, parameter);
}
