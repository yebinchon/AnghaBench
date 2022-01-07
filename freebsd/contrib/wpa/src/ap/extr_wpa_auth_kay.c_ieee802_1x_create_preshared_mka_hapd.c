
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sta_info {int dummy; } ;
struct mka_key_name {int len; int name; int key; } ;
struct mka_key {int len; int name; int key; } ;
struct hostapd_data {TYPE_2__* kay; TYPE_1__* conf; } ;
struct TYPE_4__ {scalar_t__ policy; } ;
struct TYPE_3__ {int mka_psk_set; int mka_ckn; int mka_ckn_len; int mka_cak; int mka_cak_len; } ;


 scalar_t__ DO_NOT_SECURE ;
 int MKA_PSK_SET ;
 int PSK ;
 int TRUE ;
 scalar_t__ ieee802_1x_alloc_kay_sm_hapd (struct hostapd_data*,struct sta_info*) ;
 int ieee802_1x_dealloc_kay_sm_hapd (struct hostapd_data*) ;
 void* ieee802_1x_kay_create_mka (TYPE_2__*,struct mka_key_name*,struct mka_key_name*,int ,int ,int ) ;
 int os_free (struct mka_key_name*) ;
 int os_memcpy (int ,int ,int ) ;
 struct mka_key_name* os_zalloc (int) ;

void * ieee802_1x_create_preshared_mka_hapd(struct hostapd_data *hapd,
         struct sta_info *sta)
{
 struct mka_key *cak;
 struct mka_key_name *ckn;
 void *res = ((void*)0);

 if ((hapd->conf->mka_psk_set & MKA_PSK_SET) != MKA_PSK_SET)
  goto end;

 ckn = os_zalloc(sizeof(*ckn));
 if (!ckn)
  goto end;

 cak = os_zalloc(sizeof(*cak));
 if (!cak)
  goto free_ckn;

 if (ieee802_1x_alloc_kay_sm_hapd(hapd, sta) < 0 || !hapd->kay)
  goto free_cak;

 if (hapd->kay->policy == DO_NOT_SECURE)
  goto dealloc;

 cak->len = hapd->conf->mka_cak_len;
 os_memcpy(cak->key, hapd->conf->mka_cak, cak->len);

 ckn->len = hapd->conf->mka_ckn_len;;
 os_memcpy(ckn->name, hapd->conf->mka_ckn, ckn->len);

 res = ieee802_1x_kay_create_mka(hapd->kay, ckn, cak, 0, PSK, TRUE);
 if (res)
  goto free_cak;

dealloc:

 ieee802_1x_dealloc_kay_sm_hapd(hapd);
free_cak:
 os_free(cak);
free_ckn:
 os_free(ckn);
end:
 return res;
}
