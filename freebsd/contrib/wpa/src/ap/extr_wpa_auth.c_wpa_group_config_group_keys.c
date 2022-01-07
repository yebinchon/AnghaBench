
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_group {int GN; size_t GTK_len; int GN_igtk; int * IGTK; int vlan_id; int * GTK; } ;
struct TYPE_2__ {scalar_t__ ieee80211w; int group_mgmt_cipher; int wpa_group; } ;
struct wpa_authenticator {TYPE_1__ conf; } ;
typedef enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;


 scalar_t__ NO_MGMT_FRAME_PROTECTION ;
 int broadcast_ether_addr ;
 scalar_t__ wpa_auth_set_key (struct wpa_authenticator*,int ,int,int ,int,int ,size_t) ;
 size_t wpa_cipher_key_len (int ) ;
 int wpa_cipher_to_alg (int ) ;

__attribute__((used)) static int wpa_group_config_group_keys(struct wpa_authenticator *wpa_auth,
           struct wpa_group *group)
{
 int ret = 0;

 if (wpa_auth_set_key(wpa_auth, group->vlan_id,
        wpa_cipher_to_alg(wpa_auth->conf.wpa_group),
        broadcast_ether_addr, group->GN,
        group->GTK[group->GN - 1], group->GTK_len) < 0)
  ret = -1;
 return ret;
}
