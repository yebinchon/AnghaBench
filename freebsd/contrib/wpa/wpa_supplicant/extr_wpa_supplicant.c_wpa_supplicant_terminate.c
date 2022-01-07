
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_global {int dummy; } ;


 int wpa_supplicant_terminate_proc (struct wpa_global*) ;

__attribute__((used)) static void wpa_supplicant_terminate(int sig, void *signal_ctx)
{
 struct wpa_global *global = signal_ctx;
 wpa_supplicant_terminate_proc(global);
}
