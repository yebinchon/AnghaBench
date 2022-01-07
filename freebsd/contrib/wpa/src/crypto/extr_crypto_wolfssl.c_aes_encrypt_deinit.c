
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int os_free (void*) ;

void aes_encrypt_deinit(void *ctx)
{
 os_free(ctx);
}
