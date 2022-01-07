
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct eap_sm {int decision; TYPE_1__* user; } ;
struct TYPE_2__ {scalar_t__ phase2; } ;


 int DECISION_FAILURE ;
 int MSG_DEBUG ;
 int eap_sm_process_nak (struct eap_sm*,int const*,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static void eap_sm_Policy_update(struct eap_sm *sm, const u8 *nak_list,
     size_t len)
{
 if (nak_list == ((void*)0) || sm == ((void*)0) || sm->user == ((void*)0))
  return;

 if (sm->user->phase2) {
  wpa_printf(MSG_DEBUG, "EAP: EAP-Nak received after Phase2 user"
      " info was selected - reject");
  sm->decision = DECISION_FAILURE;
  return;
 }

 eap_sm_process_nak(sm, nak_list, len);
}
