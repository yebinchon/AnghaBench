
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_state_machine {scalar_t__ pairwise; int dot11RSNAStatsTKIPRemoteMICFailures; int addr; } ;
struct TYPE_2__ {scalar_t__ wpa_group; } ;
struct wpa_authenticator {int dot11RSNAStatsTKIPRemoteMICFailures; TYPE_1__ conf; } ;


 int LOGGER_INFO ;
 scalar_t__ WPA_CIPHER_TKIP ;
 int wpa_auth_logger (struct wpa_authenticator*,int ,int ,char*) ;
 scalar_t__ wpa_auth_mic_failure_report (struct wpa_authenticator*,int ) ;
 int wpa_auth_vlogger (struct wpa_authenticator*,int ,int ,char*,int) ;
 int wpa_request_new_ptk (struct wpa_state_machine*) ;

__attribute__((used)) static int wpa_receive_error_report(struct wpa_authenticator *wpa_auth,
        struct wpa_state_machine *sm, int group)
{

 wpa_auth_vlogger(wpa_auth, sm->addr, LOGGER_INFO,
    "received EAPOL-Key Error Request "
    "(STA detected Michael MIC failure (group=%d))",
    group);

 if (group && wpa_auth->conf.wpa_group != WPA_CIPHER_TKIP) {
  wpa_auth_logger(wpa_auth, sm->addr, LOGGER_INFO,
    "ignore Michael MIC failure report since "
    "group cipher is not TKIP");
 } else if (!group && sm->pairwise != WPA_CIPHER_TKIP) {
  wpa_auth_logger(wpa_auth, sm->addr, LOGGER_INFO,
    "ignore Michael MIC failure report since "
    "pairwise cipher is not TKIP");
 } else {
  if (wpa_auth_mic_failure_report(wpa_auth, sm->addr) > 0)
   return 1;
  sm->dot11RSNAStatsTKIPRemoteMICFailures++;
  wpa_auth->dot11RSNAStatsTKIPRemoteMICFailures++;
 }





 wpa_request_new_ptk(sm);
 return 0;
}
