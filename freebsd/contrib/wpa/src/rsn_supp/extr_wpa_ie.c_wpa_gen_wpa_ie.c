
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_sm {scalar_t__ proto; int key_mgmt; int group_cipher; int pairwise_cipher; int mgmt_group_cipher; } ;


 scalar_t__ WPA_PROTO_OSEN ;
 scalar_t__ WPA_PROTO_RSN ;
 int wpa_gen_wpa_ie_osen (int *,size_t,int ,int ,int ) ;
 int wpa_gen_wpa_ie_rsn (int *,size_t,int ,int ,int ,int ,struct wpa_sm*) ;
 int wpa_gen_wpa_ie_wpa (int *,size_t,int ,int ,int ) ;

int wpa_gen_wpa_ie(struct wpa_sm *sm, u8 *wpa_ie, size_t wpa_ie_len)
{
 if (sm->proto == WPA_PROTO_RSN)
  return wpa_gen_wpa_ie_rsn(wpa_ie, wpa_ie_len,
       sm->pairwise_cipher,
       sm->group_cipher,
       sm->key_mgmt, sm->mgmt_group_cipher,
       sm);







 else
  return wpa_gen_wpa_ie_wpa(wpa_ie, wpa_ie_len,
       sm->pairwise_cipher,
       sm->group_cipher,
       sm->key_mgmt);
}
