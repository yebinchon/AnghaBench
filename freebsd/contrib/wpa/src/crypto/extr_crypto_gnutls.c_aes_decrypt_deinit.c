
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* gcry_cipher_hd_t ;


 int gcry_cipher_close (void*) ;

void aes_decrypt_deinit(void *ctx)
{
 gcry_cipher_hd_t hd = ctx;
 gcry_cipher_close(hd);
}
