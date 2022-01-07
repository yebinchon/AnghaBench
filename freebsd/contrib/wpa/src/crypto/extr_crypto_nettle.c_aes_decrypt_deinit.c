
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct aes_ctx {int dummy; } ;


 int bin_clear_free (struct aes_ctx*,int) ;

void aes_decrypt_deinit(void *ctx)
{
 struct aes_ctx *actx = ctx;
 bin_clear_free(actx, sizeof(*actx));
}
