
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_result_t ;
typedef int isc_mempool_t ;
struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_mem_t ;
struct TYPE_6__ {int (* mpcreate ) (TYPE_2__*,size_t,int **) ;} ;


 int ISCAPI_MCTX_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,size_t,int **) ;

isc_result_t
isc_mempool_create(isc_mem_t *mctx, size_t size, isc_mempool_t **mpctxp) {
 REQUIRE(ISCAPI_MCTX_VALID(mctx));

 return (mctx->methods->mpcreate(mctx, size, mpctxp));
}
