
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_mempool_t ;
struct TYPE_6__ {int (* setfillcount ) (TYPE_2__*,unsigned int) ;} ;


 int ISCAPI_MPOOL_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,unsigned int) ;

void
isc_mempool_setfillcount(isc_mempool_t *mpctx, unsigned int limit) {
 REQUIRE(ISCAPI_MPOOL_VALID(mpctx));

 mpctx->methods->setfillcount(mpctx, limit);
}
