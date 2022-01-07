
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int WPA_CIPHER_CCMP ;
 int WPA_CIPHER_GCMP ;

int wpa_default_rsn_cipher(int freq)
{
 if (freq > 56160)
  return WPA_CIPHER_GCMP;

 return WPA_CIPHER_CCMP;
}
