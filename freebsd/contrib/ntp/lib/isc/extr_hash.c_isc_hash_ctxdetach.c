
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int refcnt; } ;
typedef TYPE_1__ isc_hash_t ;


 int REQUIRE (int) ;
 scalar_t__ VALID_HASH (TYPE_1__*) ;
 int destroy (TYPE_1__**) ;
 int isc_refcount_decrement (int *,unsigned int*) ;

void
isc_hash_ctxdetach(isc_hash_t **hctxp) {
 isc_hash_t *hctx;
 unsigned int refs;

 REQUIRE(hctxp != ((void*)0) && VALID_HASH(*hctxp));
 hctx = *hctxp;

 isc_refcount_decrement(&hctx->refcnt, &refs);
 if (refs == 0)
  destroy(&hctx);

 *hctxp = ((void*)0);
}
