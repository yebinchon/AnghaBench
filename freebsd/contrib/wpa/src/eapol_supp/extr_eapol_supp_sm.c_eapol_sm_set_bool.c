
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {void* eapTriggerStart; void* altReject; void* altAccept; void* portEnabled; void* eapReq; void* eapNoResp; void* eapResp; void* eapFail; void* eapRestart; void* eapSuccess; } ;
typedef enum eapol_bool_var { ____Placeholder_eapol_bool_var } eapol_bool_var ;
typedef void* Boolean ;
__attribute__((used)) static void eapol_sm_set_bool(void *ctx, enum eapol_bool_var variable,
         Boolean value)
{
 struct eapol_sm *sm = ctx;
 if (sm == ((void*)0))
  return;
 switch (variable) {
 case 130:
  sm->eapSuccess = value;
  break;
 case 131:
  sm->eapRestart = value;
  break;
 case 135:
  sm->eapFail = value;
  break;
 case 132:
  sm->eapResp = value;
  break;
 case 134:
  sm->eapNoResp = value;
  break;
 case 133:
  sm->eapReq = value;
  break;
 case 128:
  sm->portEnabled = value;
  break;
 case 137:
  sm->altAccept = value;
  break;
 case 136:
  sm->altReject = value;
  break;
 case 129:
  sm->eapTriggerStart = value;
  break;
 }
}
