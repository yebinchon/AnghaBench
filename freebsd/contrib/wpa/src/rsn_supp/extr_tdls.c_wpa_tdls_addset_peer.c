
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_tdls_peer {int supp_oper_classes_len; int supp_oper_classes; int supp_channels_len; int supp_channels; int ext_capab_len; int ext_capab; int wmm_capable; int qos_info; int vht_capabilities; int ht_capabilities; int supp_rates_len; int supp_rates; int capability; int aid; int addr; } ;
struct wpa_sm {int dummy; } ;


 int wpa_sm_tdls_peer_addset (struct wpa_sm*,int ,int,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int wpa_tdls_addset_peer(struct wpa_sm *sm, struct wpa_tdls_peer *peer,
    int add)
{
 return wpa_sm_tdls_peer_addset(sm, peer->addr, add, peer->aid,
           peer->capability,
           peer->supp_rates, peer->supp_rates_len,
           peer->ht_capabilities,
           peer->vht_capabilities,
           peer->qos_info, peer->wmm_capable,
           peer->ext_capab, peer->ext_capab_len,
           peer->supp_channels,
           peer->supp_channels_len,
           peer->supp_oper_classes,
           peer->supp_oper_classes_len);
}
