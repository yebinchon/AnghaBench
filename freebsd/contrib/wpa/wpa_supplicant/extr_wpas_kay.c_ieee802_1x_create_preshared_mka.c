
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wpa_supplicant {TYPE_1__* kay; } ;
struct wpa_ssid {int mka_psk_set; int mka_ckn; int mka_ckn_len; int mka_cak; int mka_cak_len; } ;
struct mka_key_name {int len; int name; int key; } ;
struct mka_key {int len; int name; int key; } ;
struct TYPE_2__ {scalar_t__ policy; } ;


 scalar_t__ DO_NOT_SECURE ;
 int FALSE ;
 int MKA_PSK_SET ;
 int PSK ;
 scalar_t__ ieee802_1x_alloc_kay_sm (struct wpa_supplicant*,struct wpa_ssid*) ;
 int ieee802_1x_dealloc_kay_sm (struct wpa_supplicant*) ;
 void* ieee802_1x_kay_create_mka (TYPE_1__*,struct mka_key_name*,struct mka_key_name*,int ,int ,int ) ;
 int os_free (struct mka_key_name*) ;
 int os_memcpy (int ,int ,int ) ;
 struct mka_key_name* os_zalloc (int) ;

void * ieee802_1x_create_preshared_mka(struct wpa_supplicant *wpa_s,
           struct wpa_ssid *ssid)
{
 struct mka_key *cak;
 struct mka_key_name *ckn;
 void *res = ((void*)0);

 if ((ssid->mka_psk_set & MKA_PSK_SET) != MKA_PSK_SET)
  goto end;

 ckn = os_zalloc(sizeof(*ckn));
 if (!ckn)
  goto end;

 cak = os_zalloc(sizeof(*cak));
 if (!cak)
  goto free_ckn;

 if (ieee802_1x_alloc_kay_sm(wpa_s, ssid) < 0 || !wpa_s->kay)
  goto free_cak;

 if (wpa_s->kay->policy == DO_NOT_SECURE)
  goto dealloc;

 cak->len = ssid->mka_cak_len;
 os_memcpy(cak->key, ssid->mka_cak, cak->len);

 ckn->len = ssid->mka_ckn_len;
 os_memcpy(ckn->name, ssid->mka_ckn, ckn->len);

 res = ieee802_1x_kay_create_mka(wpa_s->kay, ckn, cak, 0, PSK, FALSE);
 if (res)
  goto free_cak;

dealloc:

 ieee802_1x_dealloc_kay_sm(wpa_s);
free_cak:
 os_free(cak);
free_ckn:
 os_free(ckn);
end:
 return res;
}
