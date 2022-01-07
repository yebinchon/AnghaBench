
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_group {int GN; size_t GTK_len; int GN_igtk; int * IGTK; int GNonce; int GMK; int Counter; int * GTK; } ;
struct TYPE_2__ {scalar_t__ ieee80211w; int group_mgmt_cipher; } ;
struct wpa_authenticator {int addr; TYPE_1__ conf; } ;


 int MSG_DEBUG ;
 scalar_t__ NO_MGMT_FRAME_PROTECTION ;
 int WPA_NONCE_LEN ;
 int inc_byte_array (int ,int ) ;
 int os_memcpy (int ,int ,int ) ;
 size_t wpa_cipher_key_len (int ) ;
 scalar_t__ wpa_gmk_to_gtk (int ,char*,int ,int ,int ,size_t) ;
 int wpa_hexdump_key (int ,char*,int ,size_t) ;

__attribute__((used)) static int wpa_gtk_update(struct wpa_authenticator *wpa_auth,
     struct wpa_group *group)
{
 int ret = 0;

 os_memcpy(group->GNonce, group->Counter, WPA_NONCE_LEN);
 inc_byte_array(group->Counter, WPA_NONCE_LEN);
 if (wpa_gmk_to_gtk(group->GMK, "Group key expansion",
      wpa_auth->addr, group->GNonce,
      group->GTK[group->GN - 1], group->GTK_len) < 0)
  ret = -1;
 wpa_hexdump_key(MSG_DEBUG, "GTK",
   group->GTK[group->GN - 1], group->GTK_len);
 return ret;
}
