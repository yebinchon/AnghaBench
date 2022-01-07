
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int wpa_cipher_rsc_len(int cipher)
{
 switch (cipher) {
 case 131:
 case 129:
 case 132:
 case 130:
 case 128:
  return 6;
 }

 return 0;
}
