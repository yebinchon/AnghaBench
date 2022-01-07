
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_CIPHER_CCMP ;
 int WPA_CIPHER_CCMP_256 ;
 int WPA_CIPHER_GCMP ;
 int WPA_CIPHER_GCMP_256 ;
 int WPA_CIPHER_NONE ;
 int WPA_CIPHER_TKIP ;

int wpa_pick_pairwise_cipher(int ciphers, int none_allowed)
{
 if (ciphers & WPA_CIPHER_CCMP_256)
  return WPA_CIPHER_CCMP_256;
 if (ciphers & WPA_CIPHER_GCMP_256)
  return WPA_CIPHER_GCMP_256;
 if (ciphers & WPA_CIPHER_CCMP)
  return WPA_CIPHER_CCMP;
 if (ciphers & WPA_CIPHER_GCMP)
  return WPA_CIPHER_GCMP;
 if (ciphers & WPA_CIPHER_TKIP)
  return WPA_CIPHER_TKIP;
 if (none_allowed && (ciphers & WPA_CIPHER_NONE))
  return WPA_CIPHER_NONE;
 return -1;
}
