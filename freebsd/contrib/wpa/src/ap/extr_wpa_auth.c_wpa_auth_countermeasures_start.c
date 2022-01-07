
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_authenticator {int dot11RSNATKIPCounterMeasuresInvoked; } ;



void wpa_auth_countermeasures_start(struct wpa_authenticator *wpa_auth)
{
 if (wpa_auth)
  wpa_auth->dot11RSNATKIPCounterMeasuresInvoked++;
}
