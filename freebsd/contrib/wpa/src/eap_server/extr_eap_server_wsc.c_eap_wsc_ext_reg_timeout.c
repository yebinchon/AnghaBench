
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_wsc_data {int ext_reg_timeout; } ;
struct eap_sm {scalar_t__ method_pending; } ;


 scalar_t__ METHOD_PENDING_WAIT ;
 int MSG_DEBUG ;
 int eap_sm_pending_cb (struct eap_sm*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_wsc_ext_reg_timeout(void *eloop_ctx, void *timeout_ctx)
{
 struct eap_sm *sm = eloop_ctx;
 struct eap_wsc_data *data = timeout_ctx;

 if (sm->method_pending != METHOD_PENDING_WAIT)
  return;

 wpa_printf(MSG_DEBUG, "EAP-WSC: Timeout while waiting for an External "
     "Registrar");
 data->ext_reg_timeout = 1;
 eap_sm_pending_cb(sm);
}
