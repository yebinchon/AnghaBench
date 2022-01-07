
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int fast_reauth; } ;



void wpa_sm_set_fast_reauth(struct wpa_sm *sm, int fast_reauth)
{
 if (sm)
  sm->fast_reauth = fast_reauth;
}
