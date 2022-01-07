
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* ifmsh; } ;
struct sta_info {int dummy; } ;
struct mesh_conf {int dot11MeshRetryTimeout; } ;
typedef enum mesh_plink_state { ____Placeholder_mesh_plink_state } mesh_plink_state ;
struct TYPE_2__ {struct mesh_conf* mconf; } ;


 int PLINK_OPEN ;
 int eloop_cancel_timeout (int ,struct wpa_supplicant*,struct sta_info*) ;
 int eloop_register_timeout (int,int,int ,struct wpa_supplicant*,struct sta_info*) ;
 int mesh_mpm_send_plink_action (struct wpa_supplicant*,struct sta_info*,int ,int ) ;
 int plink_timer ;
 int wpa_mesh_set_plink_state (struct wpa_supplicant*,struct sta_info*,int) ;

__attribute__((used)) static void
mesh_mpm_plink_open(struct wpa_supplicant *wpa_s, struct sta_info *sta,
      enum mesh_plink_state next_state)
{
 struct mesh_conf *conf = wpa_s->ifmsh->mconf;

 eloop_cancel_timeout(plink_timer, wpa_s, sta);
 eloop_register_timeout(conf->dot11MeshRetryTimeout / 1000,
          (conf->dot11MeshRetryTimeout % 1000) * 1000,
          plink_timer, wpa_s, sta);
 mesh_mpm_send_plink_action(wpa_s, sta, PLINK_OPEN, 0);
 wpa_mesh_set_plink_state(wpa_s, sta, next_state);
}
