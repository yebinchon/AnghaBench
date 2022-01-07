
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int DES_key_schedule ;
typedef int DES_cblock ;


 int DES_ENCRYPT ;
 int DES_ecb_encrypt (int *,int *,int *,int ) ;
 int DES_set_key (int *,int *) ;

int des_encrypt(const u8 *clear, const u8 *key, u8 *cypher)
{
 u8 pkey[8], next, tmp;
 int i;
 DES_key_schedule ks;


 next = 0;
 for (i = 0; i < 7; i++) {
  tmp = key[i];
  pkey[i] = (tmp >> i) | next | 1;
  next = tmp << (7 - i);
 }
 pkey[i] = next | 1;

 DES_set_key((DES_cblock *) &pkey, &ks);
 DES_ecb_encrypt((DES_cblock *) clear, (DES_cblock *) cypher, &ks,
   DES_ENCRYPT);
 return 0;
}
