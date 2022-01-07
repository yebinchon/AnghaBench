
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ isc_result_t ;
typedef int isc_mem_t ;
struct TYPE_6__ {unsigned int limit; size_t vectorlen; int lock; int * entropy; struct TYPE_6__* rndvector; int refcnt; int initialized; int * mctx; int magic; } ;
typedef TYPE_1__ isc_hash_t ;
typedef int isc_entropy_t ;
typedef TYPE_1__ hash_random_t ;
typedef unsigned int hash_accum_t ;


 int DESTROYLOCK (int *) ;
 int HASH_MAGIC ;
 int ISC_FALSE ;
 scalar_t__ ISC_R_NOMEMORY ;
 scalar_t__ ISC_R_RANGE ;
 scalar_t__ ISC_R_SUCCESS ;
 int REQUIRE (int) ;
 int UNUSED (int *) ;
 int isc_entropy_attach (int *,int **) ;
 int isc_mem_attach (int *,int **) ;
 TYPE_1__* isc_mem_get (int *,size_t) ;
 int isc_mem_put (int *,TYPE_1__*,size_t) ;
 scalar_t__ isc_mutex_init (int *) ;
 scalar_t__ isc_refcount_init (int *,int) ;

isc_result_t
isc_hash_ctxcreate(isc_mem_t *mctx, isc_entropy_t *entropy,
     unsigned int limit, isc_hash_t **hctxp)
{
 isc_result_t result;
 isc_hash_t *hctx;
 size_t vlen;
 hash_random_t *rv;
 hash_accum_t overflow_limit;

 REQUIRE(mctx != ((void*)0));
 REQUIRE(hctxp != ((void*)0) && *hctxp == ((void*)0));






 overflow_limit =
  1 << (((sizeof(hash_accum_t) - sizeof(hash_random_t))) * 8);
 if (overflow_limit < (limit + 1) * 0xff)
  return (ISC_R_RANGE);

 hctx = isc_mem_get(mctx, sizeof(isc_hash_t));
 if (hctx == ((void*)0))
  return (ISC_R_NOMEMORY);

 vlen = sizeof(hash_random_t) * (limit + 1);
 rv = isc_mem_get(mctx, vlen);
 if (rv == ((void*)0)) {
  result = ISC_R_NOMEMORY;
  goto errout;
 }




 result = isc_mutex_init(&hctx->lock);
 if (result != ISC_R_SUCCESS)
  goto errout;




 hctx->magic = HASH_MAGIC;
 hctx->mctx = ((void*)0);
 isc_mem_attach(mctx, &hctx->mctx);
 hctx->initialized = ISC_FALSE;
 result = isc_refcount_init(&hctx->refcnt, 1);
 if (result != ISC_R_SUCCESS)
  goto cleanup_lock;
 hctx->entropy = ((void*)0);
 hctx->limit = limit;
 hctx->vectorlen = vlen;
 hctx->rndvector = rv;





 UNUSED(entropy);


 *hctxp = hctx;
 return (ISC_R_SUCCESS);

 cleanup_lock:
 DESTROYLOCK(&hctx->lock);
 errout:
 isc_mem_put(mctx, hctx, sizeof(isc_hash_t));
 if (rv != ((void*)0))
  isc_mem_put(mctx, rv, vlen);

 return (result);
}
