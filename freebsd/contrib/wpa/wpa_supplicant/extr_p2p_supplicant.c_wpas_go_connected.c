
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;


 int * wpas_get_p2p_client_iface (struct wpa_supplicant*,int const*) ;

__attribute__((used)) static int wpas_go_connected(void *ctx, const u8 *dev_addr)
{
 struct wpa_supplicant *wpa_s = ctx;

 return wpas_get_p2p_client_iface(wpa_s, dev_addr) != ((void*)0);
}
