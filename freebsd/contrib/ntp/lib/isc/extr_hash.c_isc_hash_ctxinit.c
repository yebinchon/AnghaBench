
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pr ;
typedef int isc_uint32_t ;
typedef scalar_t__ isc_result_t ;
struct TYPE_3__ {scalar_t__ initialized; unsigned int vectorlen; int lock; scalar_t__ rndvector; scalar_t__ entropy; } ;
typedef TYPE_1__ isc_hash_t ;


 int INSIST (int) ;
 scalar_t__ ISC_R_SUCCESS ;
 scalar_t__ ISC_TRUE ;
 int LOCK (int *) ;
 int UNLOCK (int *) ;
 scalar_t__ isc_entropy_getdata (scalar_t__,scalar_t__,unsigned int,int *,int ) ;
 int isc_random_get (int *) ;
 int memcpy (unsigned char*,int *,unsigned int) ;

void
isc_hash_ctxinit(isc_hash_t *hctx) {
 LOCK(&hctx->lock);

 if (hctx->initialized == ISC_TRUE)
  goto out;

 if (hctx->entropy) {
  INSIST(0);

 } else {
  isc_uint32_t pr;
  unsigned int i, copylen;
  unsigned char *p;

  p = (unsigned char *)hctx->rndvector;
  for (i = 0; i < hctx->vectorlen; i += copylen, p += copylen) {
   isc_random_get(&pr);
   if (i + sizeof(pr) <= hctx->vectorlen)
    copylen = sizeof(pr);
   else
    copylen = hctx->vectorlen - i;

   memcpy(p, &pr, copylen);
  }
  INSIST(p == (unsigned char *)hctx->rndvector +
         hctx->vectorlen);
 }

 hctx->initialized = ISC_TRUE;

 out:
 UNLOCK(&hctx->lock);
}
