
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eapol_sm {int eapTriggerStart; int altReject; int altAccept; int portEnabled; int eapReq; int eapNoResp; int eapResp; int eapFail; int eapRestart; int eapSuccess; } ;
typedef enum eapol_bool_var { ____Placeholder_eapol_bool_var } eapol_bool_var ;
typedef int Boolean ;
 int FALSE ;

__attribute__((used)) static Boolean eapol_sm_get_bool(void *ctx, enum eapol_bool_var variable)
{
 struct eapol_sm *sm = ctx;
 if (sm == ((void*)0))
  return FALSE;
 switch (variable) {
 case 130:
  return sm->eapSuccess;
 case 131:
  return sm->eapRestart;
 case 135:
  return sm->eapFail;
 case 132:
  return sm->eapResp;
 case 134:
  return sm->eapNoResp;
 case 133:
  return sm->eapReq;
 case 128:
  return sm->portEnabled;
 case 137:
  return sm->altAccept;
 case 136:
  return sm->altReject;
 case 129:
  return sm->eapTriggerStart;
 }
 return FALSE;
}
