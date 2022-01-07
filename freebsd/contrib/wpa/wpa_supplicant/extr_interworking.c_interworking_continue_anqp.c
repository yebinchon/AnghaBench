
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int interworking_next_anqp_fetch (struct wpa_supplicant*) ;

__attribute__((used)) static void interworking_continue_anqp(void *eloop_ctx, void *sock_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 interworking_next_anqp_fetch(wpa_s);
}
