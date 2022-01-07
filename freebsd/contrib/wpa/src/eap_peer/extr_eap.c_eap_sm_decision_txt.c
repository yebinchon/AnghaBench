
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EapDecision ;






__attribute__((used)) static const char * eap_sm_decision_txt(EapDecision decision)
{
 switch (decision) {
 case 129:
  return "FAIL";
 case 130:
  return "COND_SUCC";
 case 128:
  return "UNCOND_SUCC";
 default:
  return "UNKNOWN";
 }
}
