
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* state; scalar_t__ count; } ;
typedef TYPE_1__ SHA224_CTX ;



void
SHA224_Init(SHA224_CTX * ctx)
{


 ctx->count = 0;


 ctx->state[0] = 0xC1059ED8;
 ctx->state[1] = 0x367CD507;
 ctx->state[2] = 0x3070DD17;
 ctx->state[3] = 0xF70E5939;
 ctx->state[4] = 0xFFC00B31;
 ctx->state[5] = 0x68581511;
 ctx->state[6] = 0x64f98FA7;
 ctx->state[7] = 0xBEFA4FA4;
}
