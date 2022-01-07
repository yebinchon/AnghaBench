
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int MSG_INFO ;
 int eloop_terminate () ;
 int wpa_msg (struct wpa_supplicant*,int ,char*,int) ;

__attribute__((used)) static void eapol_test_terminate(int sig, void *signal_ctx)
{
 struct wpa_supplicant *wpa_s = signal_ctx;
 wpa_msg(wpa_s, MSG_INFO, "Signal %d received - terminating", sig);
 eloop_terminate();
}
