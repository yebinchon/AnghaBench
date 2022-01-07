
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_mempool_t ;
struct TYPE_6__ {int (* destroy ) (TYPE_2__**) ;} ;


 int ENSURE (int ) ;
 scalar_t__ ISCAPI_MPOOL_VALID (TYPE_2__*) ;
 int REQUIRE (int) ;
 int stub1 (TYPE_2__**) ;

void
isc_mempool_destroy(isc_mempool_t **mpctxp) {
 REQUIRE(mpctxp != ((void*)0) && ISCAPI_MPOOL_VALID(*mpctxp));

 (*mpctxp)->methods->destroy(mpctxp);

 ENSURE(*mpctxp == ((void*)0));
}
