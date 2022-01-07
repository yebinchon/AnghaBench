
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int gcry_cipher_hd_t ;


 int GCRY_CIPHER_DES ;
 int GCRY_CIPHER_MODE_ECB ;
 int gcry_cipher_close (int ) ;
 int gcry_cipher_encrypt (int ,int*,int,int const*,int) ;
 int gcry_cipher_open (int *,int ,int ,int ) ;
 int gcry_cipher_setkey (int ,int*,int) ;
 int gcry_err_code (int ) ;

int des_encrypt(const u8 *clear, const u8 *key, u8 *cypher)
{
 gcry_cipher_hd_t hd;
 u8 pkey[8], next, tmp;
 int i;


 next = 0;
 for (i = 0; i < 7; i++) {
  tmp = key[i];
  pkey[i] = (tmp >> i) | next | 1;
  next = tmp << (7 - i);
 }
 pkey[i] = next | 1;

 gcry_cipher_open(&hd, GCRY_CIPHER_DES, GCRY_CIPHER_MODE_ECB, 0);
 gcry_err_code(gcry_cipher_setkey(hd, pkey, 8));
 gcry_cipher_encrypt(hd, cypher, 8, clear, 8);
 gcry_cipher_close(hd);
 return 0;
}
