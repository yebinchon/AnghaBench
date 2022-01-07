
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_CIPHER_GTK_NOT_USED ;
 scalar_t__ wpa_cipher_valid_pairwise (int) ;

int wpa_cipher_valid_group(int cipher)
{
 return wpa_cipher_valid_pairwise(cipher) ||
  cipher == WPA_CIPHER_GTK_NOT_USED;
}
