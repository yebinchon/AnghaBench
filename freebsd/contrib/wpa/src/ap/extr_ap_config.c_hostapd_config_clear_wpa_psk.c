
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_wpa_psk {struct hostapd_wpa_psk* next; } ;


 int bin_clear_free (struct hostapd_wpa_psk*,int) ;

void hostapd_config_clear_wpa_psk(struct hostapd_wpa_psk **l)
{
 struct hostapd_wpa_psk *psk, *tmp;

 for (psk = *l; psk;) {
  tmp = psk;
  psk = psk->next;
  bin_clear_free(tmp, sizeof(*tmp));
 }
 *l = ((void*)0);
}
