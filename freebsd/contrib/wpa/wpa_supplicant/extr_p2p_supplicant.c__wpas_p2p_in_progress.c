
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int wpas_p2p_in_progress (struct wpa_supplicant*) ;

__attribute__((used)) static int _wpas_p2p_in_progress(void *ctx)
{
 struct wpa_supplicant *wpa_s = ctx;
 return wpas_p2p_in_progress(wpa_s);
}
