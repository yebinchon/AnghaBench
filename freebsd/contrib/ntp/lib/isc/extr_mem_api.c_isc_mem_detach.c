
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_mem_t ;
struct TYPE_6__ {int (* detach ) (TYPE_2__**) ;} ;


 int ENSURE (int ) ;
 scalar_t__ ISCAPI_MCTX_VALID (TYPE_2__*) ;
 int REQUIRE (int) ;
 int stub1 (TYPE_2__**) ;

void
isc_mem_detach(isc_mem_t **mctxp) {
 REQUIRE(mctxp != ((void*)0) && ISCAPI_MCTX_VALID(*mctxp));

 (*mctxp)->methods->detach(mctxp);

 ENSURE(*mctxp == ((void*)0));
}
