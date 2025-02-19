
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct wpa_supplicant {int mesh_rsn; TYPE_1__* conf; struct wpa_ssid* current_ssid; struct hostapd_iface* ifmsh; } ;
struct wpa_ssid {char* sae_password; char* passphrase; int key_mgmt; int proto; } ;
struct hostapd_iface {int mconf; struct hostapd_data** bss; } ;
struct hostapd_data {TYPE_3__* conf; } ;
typedef int default_groups ;
struct TYPE_5__ {int wpa_passphrase; } ;
struct TYPE_6__ {TYPE_2__ ssid; int sae_groups; int wpa_key_mgmt; int wpa; } ;
struct TYPE_4__ {scalar_t__* sae_groups; } ;


 int MSG_ERROR ;
 int dup_binstr (char const*,size_t) ;
 int mesh_rsn_auth_init (struct wpa_supplicant*,int ) ;
 int os_memdup (int*,int) ;
 size_t os_strlen (char const*) ;
 int wpa_printf (int ,char*) ;
 int wpas_mesh_copy_groups (struct hostapd_data*,struct wpa_supplicant*) ;

__attribute__((used)) static int wpas_mesh_init_rsn(struct wpa_supplicant *wpa_s)
{
 struct hostapd_iface *ifmsh = wpa_s->ifmsh;
 struct wpa_ssid *ssid = wpa_s->current_ssid;
 struct hostapd_data *bss = ifmsh->bss[0];
 static int default_groups[] = { 19, 20, 21, 25, 26, -1 };
 const char *password;
 size_t len;

 password = ssid->sae_password;
 if (!password)
  password = ssid->passphrase;
 if (!password) {
  wpa_printf(MSG_ERROR,
      "mesh: Passphrase for SAE not configured");
  return -1;
 }

 bss->conf->wpa = ssid->proto;
 bss->conf->wpa_key_mgmt = ssid->key_mgmt;

 if (wpa_s->conf->sae_groups && wpa_s->conf->sae_groups[0] > 0) {
  wpas_mesh_copy_groups(bss, wpa_s);
 } else {
  bss->conf->sae_groups = os_memdup(default_groups,
        sizeof(default_groups));
  if (!bss->conf->sae_groups)
   return -1;
 }

 len = os_strlen(password);
 bss->conf->ssid.wpa_passphrase = dup_binstr(password, len);

 wpa_s->mesh_rsn = mesh_rsn_auth_init(wpa_s, ifmsh->mconf);
 return !wpa_s->mesh_rsn ? -1 : 0;
}
