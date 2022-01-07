
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {scalar_t__ try_initiate_reauth; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,...) ;

__attribute__((used)) static int eap_sm_calculateTimeout(struct eap_sm *sm, int retransCount,
       int eapSRTT, int eapRTTVAR,
       int methodTimeout)
{
 int rto, i;

 if (sm->try_initiate_reauth) {
  wpa_printf(MSG_DEBUG,
      "EAP: retransmit timeout 1 second for EAP-Initiate-Re-auth-Start");
  return 1;
 }

 if (methodTimeout) {





  wpa_printf(MSG_DEBUG, "EAP: retransmit timeout %d seconds "
      "(from EAP method hint)", methodTimeout);
  return methodTimeout;
 }
 rto = 3;
 for (i = 0; i < retransCount; i++) {
  rto *= 2;
  if (rto >= 20) {
   rto = 20;
   break;
  }
 }

 wpa_printf(MSG_DEBUG, "EAP: retransmit timeout %d seconds "
     "(from dynamic back off; retransCount=%d)",
     rto, retransCount);

 return rto;
}
