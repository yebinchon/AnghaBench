
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_sta_wpa_psk_short {struct hostapd_sta_wpa_psk_short* next; scalar_t__ ref; } ;


 int os_free (struct hostapd_sta_wpa_psk_short*) ;

void hostapd_free_psk_list(struct hostapd_sta_wpa_psk_short *psk)
{
 if (psk && psk->ref) {

  psk->ref--;
  return;
 }

 while (psk) {
  struct hostapd_sta_wpa_psk_short *prev = psk;
  psk = psk->next;
  os_free(prev);
 }
}
