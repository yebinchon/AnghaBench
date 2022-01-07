
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int isc_mem_t ;
struct TYPE_6__ {int vectorlen; int lock; struct TYPE_6__* rndvector; int * entropy; int * mctx; int refcnt; } ;
typedef TYPE_1__ isc_hash_t ;
typedef int canary1 ;
typedef int canary0 ;


 int DESTROYLOCK (int *) ;
 int INSIST (int) ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 int UNLOCK (int *) ;
 int isc_entropy_detach (int **) ;
 int isc_mem_detach (int **) ;
 int isc_mem_put (int *,TYPE_1__*,int) ;
 int isc_refcount_destroy (int *) ;
 scalar_t__ memcmp (unsigned char*,unsigned char*,int) ;
 int memcpy (unsigned char*,TYPE_1__*,int) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
destroy(isc_hash_t **hctxp) {
 isc_hash_t *hctx;
 isc_mem_t *mctx;
 unsigned char canary0[4], canary1[4];

 REQUIRE(hctxp != ((void*)0) && *hctxp != ((void*)0));
 hctx = *hctxp;
 *hctxp = ((void*)0);

 LOCK(&hctx->lock);

 isc_refcount_destroy(&hctx->refcnt);

 mctx = hctx->mctx;




 if (hctx->rndvector != ((void*)0))
  isc_mem_put(mctx, hctx->rndvector, hctx->vectorlen);

 UNLOCK(&hctx->lock);

 DESTROYLOCK(&hctx->lock);

 memcpy(canary0, hctx + 1, sizeof(canary0));
 memset(hctx, 0, sizeof(isc_hash_t));
 memcpy(canary1, hctx + 1, sizeof(canary1));
 INSIST(memcmp(canary0, canary1, sizeof(canary0)) == 0);
 isc_mem_put(mctx, hctx, sizeof(isc_hash_t));
 isc_mem_detach(&mctx);
}
