
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int dk; int ek; int Nr; } ;
typedef TYPE_1__ rijndael_ctx ;


 int rijndaelKeySetupDec (int ,int const*,int) ;
 int rijndaelKeySetupEnc (int ,int const*,int) ;

void
rijndael_set_key(rijndael_ctx *ctx, const u_char *key, int bits)
{

 ctx->Nr = rijndaelKeySetupEnc(ctx->ek, key, bits);
 rijndaelKeySetupDec(ctx->dk, key, bits);
}
