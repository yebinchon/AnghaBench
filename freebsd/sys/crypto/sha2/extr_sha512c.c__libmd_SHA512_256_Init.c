
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; scalar_t__* count; } ;
typedef TYPE_1__ SHA512_CTX ;



void
SHA512_256_Init(SHA512_CTX * ctx)
{


 ctx->count[0] = ctx->count[1] = 0;


 ctx->state[0] = 0x22312194fc2bf72cULL;
 ctx->state[1] = 0x9f555fa3c84c64c2ULL;
 ctx->state[2] = 0x2393b86b6f53b151ULL;
 ctx->state[3] = 0x963877195940eabdULL;
 ctx->state[4] = 0x96283ee2a88effe3ULL;
 ctx->state[5] = 0xbe5e1e2553863992ULL;
 ctx->state[6] = 0x2b0199fc2c85b8aaULL;
 ctx->state[7] = 0x0eb72ddc81c52ca2ULL;
}
