
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {int dummy; } ;
struct mesh_rsn {TYPE_3__* wpa_s; } ;
struct hostapd_data {int dummy; } ;
struct TYPE_7__ {TYPE_2__* ifmsh; TYPE_1__* current_ssid; } ;
struct TYPE_6__ {struct hostapd_data** bss; } ;
struct TYPE_5__ {scalar_t__ mode; } ;


 scalar_t__ WPAS_MODE_MESH ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int const*) ;
 int eloop_cancel_timeout (int ,TYPE_3__*,struct sta_info*) ;
 int mesh_auth_timer ;
 int mesh_mpm_auth_peer (TYPE_3__*,int const*) ;

__attribute__((used)) static int auth_start_ampe(void *ctx, const u8 *addr)
{
 struct mesh_rsn *mesh_rsn = ctx;
 struct hostapd_data *hapd;
 struct sta_info *sta;

 if (mesh_rsn->wpa_s->current_ssid->mode != WPAS_MODE_MESH)
  return -1;

 hapd = mesh_rsn->wpa_s->ifmsh->bss[0];
 sta = ap_get_sta(hapd, addr);
 if (sta)
  eloop_cancel_timeout(mesh_auth_timer, mesh_rsn->wpa_s, sta);

 mesh_mpm_auth_peer(mesh_rsn->wpa_s, addr);
 return 0;
}
