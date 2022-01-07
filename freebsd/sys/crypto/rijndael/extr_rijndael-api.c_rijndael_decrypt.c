
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int Nr; int dk; } ;
typedef TYPE_1__ rijndael_ctx ;


 int rijndaelDecrypt (int ,int ,int const*,int *) ;

void
rijndael_decrypt(const rijndael_ctx *ctx, const u_char *src, u_char *dst)
{

 rijndaelDecrypt(ctx->dk, ctx->Nr, src, dst);
}
