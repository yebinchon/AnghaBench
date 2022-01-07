
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int refcnt; } ;
typedef TYPE_1__ isc_hash_t ;


 int REQUIRE (int) ;
 int VALID_HASH (TYPE_1__*) ;
 int isc_refcount_increment (int *,int *) ;

void
isc_hash_ctxattach(isc_hash_t *hctx, isc_hash_t **hctxp) {
 REQUIRE(VALID_HASH(hctx));
 REQUIRE(hctxp != ((void*)0) && *hctxp == ((void*)0));

 isc_refcount_increment(&hctx->refcnt, ((void*)0));
 *hctxp = hctx;
}
