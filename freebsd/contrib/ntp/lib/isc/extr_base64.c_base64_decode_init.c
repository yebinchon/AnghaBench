
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int isc_buffer_t ;
struct TYPE_3__ {int length; int * target; int seen_end; scalar_t__ digits; } ;
typedef TYPE_1__ base64_decode_ctx_t ;


 int ISC_FALSE ;

__attribute__((used)) static inline void
base64_decode_init(base64_decode_ctx_t *ctx, int length, isc_buffer_t *target)
{
 ctx->digits = 0;
 ctx->seen_end = ISC_FALSE;
 ctx->length = length;
 ctx->target = target;
}
