
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {scalar_t__ fetch_anqp_in_progress; } ;



void interworking_stop_fetch_anqp(struct wpa_supplicant *wpa_s)
{
 if (!wpa_s->fetch_anqp_in_progress)
  return;

 wpa_s->fetch_anqp_in_progress = 0;
}
