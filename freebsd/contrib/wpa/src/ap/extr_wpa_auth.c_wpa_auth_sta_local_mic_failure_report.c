
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_state_machine {int dot11RSNAStatsTKIPLocalMICFailures; } ;



void wpa_auth_sta_local_mic_failure_report(struct wpa_state_machine *sm)
{
 if (sm)
  sm->dot11RSNAStatsTKIPLocalMICFailures++;
}
