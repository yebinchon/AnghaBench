
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_buffer_t ;
struct TYPE_3__ {int length; int * target; scalar_t__ digits; } ;
typedef TYPE_1__ hex_decode_ctx_t ;



__attribute__((used)) static inline void
hex_decode_init(hex_decode_ctx_t *ctx, int length, isc_buffer_t *target)
{
 ctx->digits = 0;
 ctx->length = length;
 ctx->target = target;
}
