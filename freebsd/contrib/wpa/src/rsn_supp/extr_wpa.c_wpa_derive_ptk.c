
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_sm {scalar_t__ key_mgmt; int pairwise_cipher; int snonce; int bssid; int own_addr; int pmk_len; int pmk; scalar_t__ dpp_z; } ;
struct wpa_ptk {int dummy; } ;
struct wpa_eapol_key {int key_nonce; } ;


 scalar_t__ WPA_KEY_MGMT_DPP ;
 int wpa_derive_ptk_ft (struct wpa_sm*,unsigned char const*,struct wpa_eapol_key const*,struct wpa_ptk*) ;
 scalar_t__ wpa_key_mgmt_ft (scalar_t__) ;
 int wpa_pmk_to_ptk (int ,int ,char*,int ,int ,int ,int ,struct wpa_ptk*,scalar_t__,int ,int const*,size_t) ;
 int * wpabuf_head (scalar_t__) ;
 size_t wpabuf_len (scalar_t__) ;

__attribute__((used)) static int wpa_derive_ptk(struct wpa_sm *sm, const unsigned char *src_addr,
     const struct wpa_eapol_key *key, struct wpa_ptk *ptk)
{
 const u8 *z = ((void*)0);
 size_t z_len = 0;
 return wpa_pmk_to_ptk(sm->pmk, sm->pmk_len, "Pairwise key expansion",
         sm->own_addr, sm->bssid, sm->snonce,
         key->key_nonce, ptk, sm->key_mgmt,
         sm->pairwise_cipher, z, z_len);
}
