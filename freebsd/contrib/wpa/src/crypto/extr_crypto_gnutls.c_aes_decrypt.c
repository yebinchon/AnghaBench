
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef void* gcry_cipher_hd_t ;


 int gcry_cipher_decrypt (void*,int *,int,int const*,int) ;

int aes_decrypt(void *ctx, const u8 *crypt, u8 *plain)
{
 gcry_cipher_hd_t hd = ctx;
 gcry_cipher_decrypt(hd, plain, 16, crypt, 16);
 return 0;
}
