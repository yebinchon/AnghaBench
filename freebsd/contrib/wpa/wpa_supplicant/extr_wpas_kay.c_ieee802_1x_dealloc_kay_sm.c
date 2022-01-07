
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int * kay; } ;


 int ieee802_1x_kay_deinit (int *) ;

void ieee802_1x_dealloc_kay_sm(struct wpa_supplicant *wpa_s)
{
 if (!wpa_s->kay)
  return;

 ieee802_1x_kay_deinit(wpa_s->kay);
 wpa_s->kay = ((void*)0);
}
