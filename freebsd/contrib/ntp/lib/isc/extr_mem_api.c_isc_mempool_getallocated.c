
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_mempool_t ;
struct TYPE_6__ {unsigned int (* getallocated ) (TYPE_2__*) ;} ;


 int ISCAPI_MPOOL_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 unsigned int stub1 (TYPE_2__*) ;

unsigned int
isc_mempool_getallocated(isc_mempool_t *mpctx) {
 REQUIRE(ISCAPI_MPOOL_VALID(mpctx));

 return (mpctx->methods->getallocated(mpctx));
}
