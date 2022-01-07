
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ debug_fixed; int debug; } ;
typedef TYPE_1__ libusb_context ;


 TYPE_1__* GET_CONTEXT (TYPE_1__*) ;

void
libusb_set_debug(libusb_context *ctx, int level)
{
 ctx = GET_CONTEXT(ctx);

 if (ctx && ctx->debug_fixed == 0)
  ctx->debug = level;
}
