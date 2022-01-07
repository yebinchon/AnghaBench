
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_mem_water_t ;
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_mem_t ;
struct TYPE_6__ {int (* setwater ) (TYPE_2__*,int ,void*,size_t,size_t) ;} ;


 int ISCAPI_MCTX_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int ,void*,size_t,size_t) ;

void
isc_mem_setwater(isc_mem_t *ctx, isc_mem_water_t water, void *water_arg,
   size_t hiwater, size_t lowater)
{
 REQUIRE(ISCAPI_MCTX_VALID(ctx));

 ctx->methods->setwater(ctx, water, water_arg, hiwater, lowater);
}
