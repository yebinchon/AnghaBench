
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct sta_info {int last_tk_alg; int last_tk_key_idx; size_t last_tk_len; int last_tk; } ;
struct hostapd_data {int last_igtk_alg; int last_igtk_key_idx; size_t last_igtk_len; int last_gtk_alg; int last_gtk_key_idx; size_t last_gtk_len; int last_gtk; int last_igtk; TYPE_1__* conf; } ;
typedef enum wpa_alg { ____Placeholder_wpa_alg } wpa_alg ;
struct TYPE_2__ {char* iface; int vlan; } ;


 int WPA_ALG_BIP_CMAC_256 ;
 int WPA_ALG_BIP_GMAC_128 ;
 int WPA_ALG_BIP_GMAC_256 ;
 int WPA_ALG_IGTK ;
 struct sta_info* ap_get_sta (struct hostapd_data*,int const*) ;
 int hostapd_drv_set_key (char const*,struct hostapd_data*,int,int const*,int,int,int *,int ,int *,size_t) ;
 char* hostapd_get_vlan_id_ifname (int ,int) ;
 int is_broadcast_ether_addr (int const*) ;
 int os_memcpy (int ,int *,size_t) ;

__attribute__((used)) static int hostapd_wpa_auth_set_key(void *ctx, int vlan_id, enum wpa_alg alg,
        const u8 *addr, int idx, u8 *key,
        size_t key_len)
{
 struct hostapd_data *hapd = ctx;
 const char *ifname = hapd->conf->iface;

 if (vlan_id > 0) {
  ifname = hostapd_get_vlan_id_ifname(hapd->conf->vlan, vlan_id);
  if (ifname == ((void*)0))
   return -1;
 }
 return hostapd_drv_set_key(ifname, hapd, alg, addr, idx, 1, ((void*)0), 0,
       key, key_len);
}
