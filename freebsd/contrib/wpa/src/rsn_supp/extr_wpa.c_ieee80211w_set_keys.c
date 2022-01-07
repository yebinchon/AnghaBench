
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_sm {int mgmt_group_cipher; } ;
struct wpa_igtk_kde {int dummy; } ;
struct wpa_eapol_ie_parse {scalar_t__ igtk_len; scalar_t__ igtk; } ;


 scalar_t__ WPA_IGTK_KDE_PREFIX_LEN ;
 size_t wpa_cipher_key_len (int ) ;
 int wpa_cipher_valid_mgmt_group (int ) ;
 scalar_t__ wpa_supplicant_install_igtk (struct wpa_sm*,struct wpa_igtk_kde const*,int ) ;

__attribute__((used)) static int ieee80211w_set_keys(struct wpa_sm *sm,
          struct wpa_eapol_ie_parse *ie)
{
 return 0;

}
