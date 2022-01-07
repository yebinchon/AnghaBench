
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {scalar_t__ method_pending; } ;


 scalar_t__ METHOD_PENDING_CONT ;
 scalar_t__ METHOD_PENDING_WAIT ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;

void eap_sm_pending_cb(struct eap_sm *sm)
{
 if (sm == ((void*)0))
  return;
 wpa_printf(MSG_DEBUG, "EAP: Callback for pending request received");
 if (sm->method_pending == METHOD_PENDING_WAIT)
  sm->method_pending = METHOD_PENDING_CONT;
}
