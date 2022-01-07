
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int eloop_cancel_timeout (int ,struct wpa_supplicant*,void*) ;
 int wpas_wps_assoc_with_cred ;

__attribute__((used)) static void wpas_wps_assoc_with_cred_cancel(struct wpa_supplicant *wpa_s)
{
 eloop_cancel_timeout(wpas_wps_assoc_with_cred, wpa_s, (void *) 0);
 eloop_cancel_timeout(wpas_wps_assoc_with_cred, wpa_s, (void *) 1);
}
