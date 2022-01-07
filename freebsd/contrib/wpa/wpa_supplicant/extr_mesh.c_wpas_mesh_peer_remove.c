
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {int dummy; } ;


 int mesh_mpm_close_peer (struct wpa_supplicant*,int const*) ;

int wpas_mesh_peer_remove(struct wpa_supplicant *wpa_s, const u8 *addr)
{
 return mesh_mpm_close_peer(wpa_s, addr);
}
