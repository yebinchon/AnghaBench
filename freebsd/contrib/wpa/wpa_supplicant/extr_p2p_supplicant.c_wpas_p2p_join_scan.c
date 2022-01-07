
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int dummy; } ;


 int wpas_p2p_join_scan_req (struct wpa_supplicant*,int ,int *,int ) ;

__attribute__((used)) static void wpas_p2p_join_scan(void *eloop_ctx, void *timeout_ctx)
{
 struct wpa_supplicant *wpa_s = eloop_ctx;
 wpas_p2p_join_scan_req(wpa_s, 0, ((void*)0), 0);
}
