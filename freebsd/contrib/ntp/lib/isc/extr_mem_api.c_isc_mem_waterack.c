
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_mem_t ;
struct TYPE_6__ {int (* waterack ) (TYPE_2__*,int) ;} ;


 int ISCAPI_MCTX_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int) ;

void
isc_mem_waterack(isc_mem_t *ctx, int flag) {
 REQUIRE(ISCAPI_MCTX_VALID(ctx));

 ctx->methods->waterack(ctx, flag);
}
