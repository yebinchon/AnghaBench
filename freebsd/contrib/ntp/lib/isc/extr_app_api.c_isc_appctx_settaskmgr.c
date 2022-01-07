
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_taskmgr_t ;
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_appctx_t ;
struct TYPE_6__ {int (* settaskmgr ) (TYPE_2__*,int *) ;} ;


 int ISCAPI_APPCTX_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int *) ;

void
isc_appctx_settaskmgr(isc_appctx_t *ctx, isc_taskmgr_t *taskmgr) {
 REQUIRE(ISCAPI_APPCTX_VALID(ctx));
 REQUIRE(taskmgr != ((void*)0));

 ctx->methods->settaskmgr(ctx, taskmgr);
}
