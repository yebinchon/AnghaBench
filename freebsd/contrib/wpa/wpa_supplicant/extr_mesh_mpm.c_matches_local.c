
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* ifmsh; } ;
struct mesh_conf {scalar_t__ mesh_pp_id; scalar_t__ mesh_pm_id; scalar_t__ mesh_cc_id; scalar_t__ mesh_sp_id; scalar_t__ mesh_auth_id; int meshid; int meshid_len; } ;
struct ieee802_11_elems {int mesh_config_len; scalar_t__* mesh_config; int mesh_id_len; int mesh_id; } ;
struct TYPE_2__ {struct mesh_conf* mconf; } ;
typedef int Boolean ;


 int FALSE ;
 scalar_t__ os_memcmp (int ,int ,int ) ;

__attribute__((used)) static Boolean matches_local(struct wpa_supplicant *wpa_s,
        struct ieee802_11_elems *elems)
{
 struct mesh_conf *mconf = wpa_s->ifmsh->mconf;

 if (elems->mesh_config_len < 5)
  return FALSE;

 return (mconf->meshid_len == elems->mesh_id_len &&
  os_memcmp(mconf->meshid, elems->mesh_id,
     elems->mesh_id_len) == 0 &&
  mconf->mesh_pp_id == elems->mesh_config[0] &&
  mconf->mesh_pm_id == elems->mesh_config[1] &&
  mconf->mesh_cc_id == elems->mesh_config[2] &&
  mconf->mesh_sp_id == elems->mesh_config[3] &&
  mconf->mesh_auth_id == elems->mesh_config[4]);
}
