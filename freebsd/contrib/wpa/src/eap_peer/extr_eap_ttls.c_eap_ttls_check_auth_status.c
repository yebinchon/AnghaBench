
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tls_out; } ;
struct eap_ttls_data {int phase2_success; scalar_t__ decision_succ; int ready_for_tnc; TYPE_1__ ssl; int tnc_started; } ;
struct eap_sm {int dummy; } ;
struct eap_method_ret {scalar_t__ methodState; scalar_t__ decision; int allowNotifications; } ;


 scalar_t__ DECISION_COND_SUCC ;
 scalar_t__ DECISION_FAIL ;
 scalar_t__ DECISION_UNCOND_SUCC ;
 int FALSE ;
 scalar_t__ METHOD_DONE ;
 scalar_t__ METHOD_MAY_CONT ;
 int MSG_DEBUG ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_ttls_check_auth_status(struct eap_sm *sm,
           struct eap_ttls_data *data,
           struct eap_method_ret *ret)
{
 if (ret->methodState == METHOD_DONE) {
  ret->allowNotifications = FALSE;
  if (ret->decision == DECISION_UNCOND_SUCC ||
      ret->decision == DECISION_COND_SUCC) {
   wpa_printf(MSG_DEBUG, "EAP-TTLS: Authentication "
       "completed successfully");
   data->phase2_success = 1;
   data->decision_succ = ret->decision;
  }
 } else if (ret->methodState == METHOD_MAY_CONT &&
     (ret->decision == DECISION_UNCOND_SUCC ||
      ret->decision == DECISION_COND_SUCC)) {
   wpa_printf(MSG_DEBUG, "EAP-TTLS: Authentication "
       "completed successfully (MAY_CONT)");
   data->phase2_success = 1;
   data->decision_succ = ret->decision;
 } else if (data->decision_succ != DECISION_FAIL &&
     data->phase2_success &&
     !data->ssl.tls_out) {





  wpa_printf(MSG_DEBUG,
      "EAP-TTLS: Restore success decision after fragmented frame sent completely");
  ret->decision = data->decision_succ;
 }
}
