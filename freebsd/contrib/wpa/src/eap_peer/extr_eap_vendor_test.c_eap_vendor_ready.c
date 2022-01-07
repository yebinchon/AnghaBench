
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {int dummy; } ;


 int MSG_DEBUG ;
 int eap_notify_pending (struct eap_sm*) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_vendor_ready(void *eloop_ctx, void *timeout_ctx)
{
 struct eap_sm *sm = eloop_ctx;
 wpa_printf(MSG_DEBUG, "EAP-VENDOR-TEST: Ready to re-process pending "
     "request");
 eap_notify_pending(sm);
}
