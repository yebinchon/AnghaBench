
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostapd_sta_wpa_psk_short {int ref; } ;



__attribute__((used)) static void copy_psk_list(struct hostapd_sta_wpa_psk_short **psk,
     struct hostapd_sta_wpa_psk_short *src)
{
 if (!psk)
  return;

 if (src)
  src->ref++;

 *psk = src;
}
