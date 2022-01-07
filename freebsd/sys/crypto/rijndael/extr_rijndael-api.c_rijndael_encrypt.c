
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int Nr; int ek; } ;
typedef TYPE_1__ rijndael_ctx ;


 int rijndaelEncrypt (int ,int ,int const*,int *) ;

void
rijndael_encrypt(const rijndael_ctx *ctx, const u_char *src, u_char *dst)
{

 rijndaelEncrypt(ctx->ek, ctx->Nr, src, dst);
}
