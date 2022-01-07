
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_3__ {int bits; int subkey; } ;
typedef TYPE_1__ camellia_ctx ;


 int Camellia_Ekeygen (int,int const*,int ) ;

void
camellia_set_key(camellia_ctx *ctx, const u_char *key, int bits)
{

    Camellia_Ekeygen(bits, key, ctx->subkey);
    ctx->bits = bits;
}
