
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_mutex_t ;
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_mempool_t ;
struct TYPE_6__ {int (* associatelock ) (TYPE_2__*,int *) ;} ;


 int ISCAPI_MPOOL_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,int *) ;

void
isc_mempool_associatelock(isc_mempool_t *mpctx, isc_mutex_t *lock) {
 REQUIRE(ISCAPI_MPOOL_VALID(mpctx));

 mpctx->methods->associatelock(mpctx, lock);
}
