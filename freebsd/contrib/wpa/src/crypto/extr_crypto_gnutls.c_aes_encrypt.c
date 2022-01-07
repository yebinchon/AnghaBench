
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* gcry_cipher_hd_t ;


 int gcry_cipher_encrypt (void*,int *,int,int const*,int) ;

int aes_encrypt(void *ctx, const u8 *plain, u8 *crypt)
{
 gcry_cipher_hd_t hd = ctx;
 gcry_cipher_encrypt(hd, crypt, 16, plain, 16);
 return 0;
}
