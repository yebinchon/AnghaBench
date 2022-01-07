
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct wpa_supplicant {struct eapol_sm* eapol; } ;
struct eapol_sm {int dummy; } ;


 int EAP_MSK_LEN ;
 int MSG_DEBUG ;
 int eapol_sm_get_key (struct eapol_sm*,int *,size_t) ;
 int os_memcpy (int *,int *,size_t) ;
 int wpa_printf (int ,char*) ;

__attribute__((used)) static int ieee802_1x_auth_get_msk(struct wpa_supplicant *wpa_s, const u8 *addr,
       u8 *msk, size_t *len)
{
 u8 key[EAP_MSK_LEN];
 size_t keylen;
 struct eapol_sm *sm;
 int res;

 sm = wpa_s->eapol;
 if (sm == ((void*)0))
  return -1;

 keylen = EAP_MSK_LEN;
 res = eapol_sm_get_key(sm, key, keylen);
 if (res) {
  wpa_printf(MSG_DEBUG,
      "Failed to get MSK from EAPOL state machines");
  return -1;
 }

 if (keylen > *len)
  keylen = *len;
 os_memcpy(msk, key, keylen);
 *len = keylen;

 return 0;
}
