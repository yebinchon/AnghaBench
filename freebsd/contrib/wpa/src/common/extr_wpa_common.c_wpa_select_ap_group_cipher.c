
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_CIPHER_CCMP ;
 int WPA_CIPHER_CCMP_256 ;
 int WPA_CIPHER_GCMP ;
 int WPA_CIPHER_GCMP_256 ;
 int WPA_CIPHER_TKIP ;

int wpa_select_ap_group_cipher(int wpa, int wpa_pairwise, int rsn_pairwise)
{
 int pairwise = 0;


 if (wpa & 1)
  pairwise |= wpa_pairwise;
 if (wpa & 2)
  pairwise |= rsn_pairwise;

 if (pairwise & WPA_CIPHER_TKIP)
  return WPA_CIPHER_TKIP;
 if ((pairwise & (WPA_CIPHER_CCMP | WPA_CIPHER_GCMP)) == WPA_CIPHER_GCMP)
  return WPA_CIPHER_GCMP;
 if ((pairwise & (WPA_CIPHER_GCMP_256 | WPA_CIPHER_CCMP |
    WPA_CIPHER_GCMP)) == WPA_CIPHER_GCMP_256)
  return WPA_CIPHER_GCMP_256;
 if ((pairwise & (WPA_CIPHER_CCMP_256 | WPA_CIPHER_CCMP |
    WPA_CIPHER_GCMP)) == WPA_CIPHER_CCMP_256)
  return WPA_CIPHER_CCMP_256;
 return WPA_CIPHER_CCMP;
}
