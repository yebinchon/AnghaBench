
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eap_sm {scalar_t__ workaround; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int,int) ;

__attribute__((used)) static int eap_success_workaround(struct eap_sm *sm, int reqId, int lastId)
{
 if (sm->workaround && (reqId == ((lastId + 1) & 0xff) ||
          reqId == ((lastId + 2) & 0xff))) {
  wpa_printf(MSG_DEBUG, "EAP: Workaround for unexpected "
      "identifier field in EAP Success: "
      "reqId=%d lastId=%d (these are supposed to be "
      "same)", reqId, lastId);
  return 1;
 }
 wpa_printf(MSG_DEBUG, "EAP: EAP-Success Id mismatch - reqId=%d "
     "lastId=%d", reqId, lastId);
 return 0;
}
