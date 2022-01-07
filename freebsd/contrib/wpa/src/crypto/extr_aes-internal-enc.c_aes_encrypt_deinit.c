
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AES_PRIV_SIZE ;
 int os_free (void*) ;
 int os_memset (void*,int ,int ) ;

void aes_encrypt_deinit(void *ctx)
{
 os_memset(ctx, 0, AES_PRIV_SIZE);
 os_free(ctx);
}
