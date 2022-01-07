
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_mem_t ;
typedef int isc_boolean_t ;
struct TYPE_6__ {int (* setdestroycheck ) (TYPE_2__*,int ) ;} ;


 int ISCAPI_MCTX_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int ) ;

void
isc_mem_setdestroycheck(isc_mem_t *mctx, isc_boolean_t flag) {
 REQUIRE(ISCAPI_MCTX_VALID(mctx));

 mctx->methods->setdestroycheck(mctx, flag);
}
