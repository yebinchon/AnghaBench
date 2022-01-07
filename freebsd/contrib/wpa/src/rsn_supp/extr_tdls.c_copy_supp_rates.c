
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_tdls_peer {int supp_rates; int supp_rates_len; } ;
struct wpa_eapol_ie_parse {scalar_t__ ext_supp_rates_len; int * ext_supp_rates; scalar_t__ supp_rates_len; scalar_t__ supp_rates; } ;


 int MSG_DEBUG ;
 int merge_byte_arrays (int ,int,scalar_t__,scalar_t__,int *,scalar_t__) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int copy_supp_rates(const struct wpa_eapol_ie_parse *kde,
      struct wpa_tdls_peer *peer)
{
 if (!kde->supp_rates) {
  wpa_printf(MSG_DEBUG, "TDLS: No supported rates received");
  return -1;
 }
 peer->supp_rates_len = merge_byte_arrays(
  peer->supp_rates, sizeof(peer->supp_rates),
  kde->supp_rates + 2, kde->supp_rates_len - 2,
  kde->ext_supp_rates ? kde->ext_supp_rates + 2 : ((void*)0),
  kde->ext_supp_rates ? kde->ext_supp_rates_len - 2 : 0);
 return 0;
}
