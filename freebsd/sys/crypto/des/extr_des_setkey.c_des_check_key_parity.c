
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DES_KEY_SZ ;
 unsigned char const* odd_parity ;

int des_check_key_parity(const unsigned char *key)
{
 int i;

 for (i=0; i<DES_KEY_SZ; i++)
  {
  if (key[i] != odd_parity[key[i]])
   return(0);
  }
 return(1);
}
