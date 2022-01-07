
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int symmetric_key ;


 int des_done (int *) ;
 int des_ecb_encrypt (int const*,int*,int *) ;
 int des_setup (int*,int,int ,int *) ;

int des_encrypt(const u8 *clear, const u8 *key, u8 *cypher)
{
 u8 pkey[8], next, tmp;
 int i;
 symmetric_key skey;


 next = 0;
 for (i = 0; i < 7; i++) {
  tmp = key[i];
  pkey[i] = (tmp >> i) | next | 1;
  next = tmp << (7 - i);
 }
 pkey[i] = next | 1;

 des_setup(pkey, 8, 0, &skey);
 des_ecb_encrypt(clear, cypher, &skey);
 des_done(&skey);
 return 0;
}
