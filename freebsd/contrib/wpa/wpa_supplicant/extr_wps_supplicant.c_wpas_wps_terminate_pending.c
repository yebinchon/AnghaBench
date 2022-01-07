
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int * wps_er; } ;


 int callbacks_pending ;
 int wpas_wps_terminate_cb ;
 int wps_er_deinit (int *,int ,struct wpa_supplicant*) ;

int wpas_wps_terminate_pending(struct wpa_supplicant *wpa_s)
{
 return 0;
}
