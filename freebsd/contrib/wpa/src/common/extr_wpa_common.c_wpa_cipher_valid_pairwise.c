
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_CIPHER_CCMP ;
 int WPA_CIPHER_CCMP_256 ;
 int WPA_CIPHER_GCMP ;
 int WPA_CIPHER_GCMP_256 ;
 int WPA_CIPHER_TKIP ;

int wpa_cipher_valid_pairwise(int cipher)
{
 return cipher == WPA_CIPHER_CCMP_256 ||
  cipher == WPA_CIPHER_GCMP_256 ||
  cipher == WPA_CIPHER_CCMP ||
  cipher == WPA_CIPHER_GCMP ||
  cipher == WPA_CIPHER_TKIP;
}
