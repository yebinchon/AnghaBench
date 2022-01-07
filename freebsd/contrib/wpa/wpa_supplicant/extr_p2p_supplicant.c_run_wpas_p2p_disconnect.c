
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int ifname; } ;


 int MSG_DEBUG ;
 int wpa_printf (int ,char*,int ) ;
 int wpas_p2p_disconnect (struct wpa_supplicant*) ;

__attribute__((used)) static void run_wpas_p2p_disconnect(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 wpa_printf(MSG_DEBUG,
     "P2P: Complete previously requested removal of %s",
     wpa_s->ifname);
 wpas_p2p_disconnect(wpa_s);
}
