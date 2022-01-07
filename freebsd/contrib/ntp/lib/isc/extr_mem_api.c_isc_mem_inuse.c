
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* methods; } ;
typedef TYPE_2__ isc_mem_t ;
struct TYPE_6__ {size_t (* inuse ) (TYPE_2__*) ;} ;


 int ISCAPI_MCTX_VALID (TYPE_2__*) ;
 int REQUIRE (int ) ;
 size_t stub1 (TYPE_2__*) ;

size_t
isc_mem_inuse(isc_mem_t *mctx) {
 REQUIRE(ISCAPI_MCTX_VALID(mctx));

 return (mctx->methods->inuse(mctx));
}
