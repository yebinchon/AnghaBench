
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct wpa_supplicant {int own_addr; } ;
struct wpa_ssid {char* sae_password; char* passphrase; int sae_password_id; } ;
struct sta_info {TYPE_2__* sae; int addr; } ;
struct TYPE_5__ {TYPE_1__* tmp; } ;
struct TYPE_4__ {scalar_t__ pw_id; } ;


 int MSG_DEBUG ;
 scalar_t__ mesh_rsn_sae_group (struct wpa_supplicant*,TYPE_2__*) ;
 scalar_t__ os_strdup (int ) ;
 int os_strlen (char const*) ;
 int sae_prepare_commit (int ,int ,int *,int ,int ,TYPE_2__*) ;
 int wpa_msg (struct wpa_supplicant*,int ,char*) ;

__attribute__((used)) static int mesh_rsn_build_sae_commit(struct wpa_supplicant *wpa_s,
         struct wpa_ssid *ssid,
         struct sta_info *sta)
{
 const char *password;

 password = ssid->sae_password;
 if (!password)
  password = ssid->passphrase;
 if (!password) {
  wpa_msg(wpa_s, MSG_DEBUG, "SAE: No password available");
  return -1;
 }

 if (mesh_rsn_sae_group(wpa_s, sta->sae) < 0) {
  wpa_msg(wpa_s, MSG_DEBUG, "SAE: Failed to select group");
  return -1;
 }

 if (sta->sae->tmp && !sta->sae->tmp->pw_id && ssid->sae_password_id) {
  sta->sae->tmp->pw_id = os_strdup(ssid->sae_password_id);
  if (!sta->sae->tmp->pw_id)
   return -1;
 }
 return sae_prepare_commit(wpa_s->own_addr, sta->addr,
      (u8 *) password, os_strlen(password),
      ssid->sae_password_id,
      sta->sae);
}
