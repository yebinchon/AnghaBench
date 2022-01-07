
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; scalar_t__* count; } ;
typedef TYPE_1__ SHA512_CTX ;



void
SHA512_Init(SHA512_CTX * ctx)
{


 ctx->count[0] = ctx->count[1] = 0;


 ctx->state[0] = 0x6a09e667f3bcc908ULL;
 ctx->state[1] = 0xbb67ae8584caa73bULL;
 ctx->state[2] = 0x3c6ef372fe94f82bULL;
 ctx->state[3] = 0xa54ff53a5f1d36f1ULL;
 ctx->state[4] = 0x510e527fade682d1ULL;
 ctx->state[5] = 0x9b05688c2b3e6c1fULL;
 ctx->state[6] = 0x1f83d9abfb41bd6bULL;
 ctx->state[7] = 0x5be0cd19137e2179ULL;
}
