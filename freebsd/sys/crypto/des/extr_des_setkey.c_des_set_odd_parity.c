
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DES_KEY_SZ ;
 unsigned char* odd_parity ;

void des_set_odd_parity(unsigned char *key)
{
 int i;

 for (i=0; i<DES_KEY_SZ; i++)
  key[i]=odd_parity[key[i]];
}
