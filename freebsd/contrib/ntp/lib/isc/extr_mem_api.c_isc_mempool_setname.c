
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_mempool_t ;
struct TYPE_6__ {int (* setname ) (TYPE_2__*,char const*) ;} ;


 int ISCAPI_MPOOL_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 int stub1 (TYPE_2__*,char const*) ;

void
isc_mempool_setname(isc_mempool_t *mpctx, const char *name) {
 REQUIRE(ISCAPI_MPOOL_VALID(mpctx));

 mpctx->methods->setname(mpctx, name);
}
