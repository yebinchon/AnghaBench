
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wpa_supplicant {int wpa; } ;


 size_t wpa_sm_pmksa_cache_list (int ,char*,size_t) ;
 scalar_t__ wpas_ap_pmksa_cache_list (struct wpa_supplicant*,char*,size_t) ;

__attribute__((used)) static int wpas_ctrl_iface_pmksa(struct wpa_supplicant *wpa_s,
     char *buf, size_t buflen)
{
 size_t reply_len;

 reply_len = wpa_sm_pmksa_cache_list(wpa_s->wpa, buf, buflen);




 return reply_len;
}
