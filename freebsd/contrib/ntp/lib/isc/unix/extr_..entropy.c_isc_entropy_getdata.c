
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef unsigned char isc_uint8_t ;
typedef int isc_uint32_t ;
typedef int isc_sha1_t ;
typedef int isc_result_t ;
struct TYPE_11__ {unsigned int entropy; scalar_t__ pool; } ;
struct TYPE_12__ {unsigned int initialized; int lock; TYPE_1__ pool; } ;
typedef TYPE_2__ isc_entropy_t ;
typedef scalar_t__ isc_boolean_t ;
typedef int digest ;


 unsigned int ISC_ENTROPY_BLOCKING ;
 unsigned int ISC_ENTROPY_GOODONLY ;
 unsigned int ISC_ENTROPY_PARTIAL ;
 scalar_t__ ISC_FALSE ;
 unsigned int ISC_MAX (int,int) ;
 int ISC_MIN (int,unsigned int) ;
 int ISC_R_NOENTROPY ;
 int ISC_R_SUCCESS ;
 int ISC_SHA1_DIGESTLENGTH ;
 scalar_t__ ISC_TF (int) ;
 int LOCK (int *) ;
 int REQUIRE (int) ;
 unsigned int RND_ENTROPY_THRESHOLD ;
 int RND_POOLBYTES ;
 unsigned int THRESHOLD_BITS ;
 int UNLOCK (int *) ;
 int VALID_ENTROPY (TYPE_2__*) ;
 int add_entropy (TYPE_2__*,int) ;
 int add_pseudo (TYPE_2__*,int) ;
 int entropypool_adddata (TYPE_2__*,unsigned char*,int,int ) ;
 int fillpool (TYPE_2__*,unsigned int,scalar_t__) ;
 int isc_sha1_final (int *,unsigned char*) ;
 int isc_sha1_init (int *) ;
 int isc_sha1_update (int *,void*,int ) ;
 int memset (unsigned char*,int ,int) ;
 int reseed (TYPE_2__*) ;
 int subtract_entropy (TYPE_2__*,int) ;

isc_result_t
isc_entropy_getdata(isc_entropy_t *ent, void *data, unsigned int length,
      unsigned int *returned, unsigned int flags)
{
 unsigned int i;
 isc_sha1_t hash;
 unsigned char digest[ISC_SHA1_DIGESTLENGTH];
 isc_uint32_t remain, deltae, count, total;
 isc_uint8_t *buf;
 isc_boolean_t goodonly, partial, blocking;

 REQUIRE(VALID_ENTROPY(ent));
 REQUIRE(data != ((void*)0));
 REQUIRE(length > 0);

 goodonly = ISC_TF((flags & ISC_ENTROPY_GOODONLY) != 0);
 partial = ISC_TF((flags & ISC_ENTROPY_PARTIAL) != 0);
 blocking = ISC_TF((flags & ISC_ENTROPY_BLOCKING) != 0);

 REQUIRE(!partial || returned != ((void*)0));

 LOCK(&ent->lock);

 remain = length;
 buf = data;
 total = 0;
 while (remain != 0) {
  count = ISC_MIN(remain, RND_ENTROPY_THRESHOLD);







  if (goodonly) {
   unsigned int fillcount;

   fillcount = ISC_MAX(remain * 8, count * 8);
   if (ent->pool.entropy >= THRESHOLD_BITS)
    fillpool(ent, fillcount, ISC_FALSE);
   else
    fillpool(ent, fillcount, blocking);





   if (ent->pool.entropy < THRESHOLD_BITS) {
    if (!partial)
     goto zeroize;
    else
     goto partial_output;
   }
  } else {




   if (ent->initialized < THRESHOLD_BITS)
    fillpool(ent, THRESHOLD_BITS, blocking);
   else
    fillpool(ent, 0, ISC_FALSE);





   if (ent->initialized < THRESHOLD_BITS)
    reseed(ent);
  }

  isc_sha1_init(&hash);
  isc_sha1_update(&hash, (void *)(ent->pool.pool),
    RND_POOLBYTES);
  isc_sha1_final(&hash, digest);




  entropypool_adddata(ent, digest, ISC_SHA1_DIGESTLENGTH, 0);

  for (i = 0; i < count; i++)
   buf[i] = digest[i] ^ digest[i + RND_ENTROPY_THRESHOLD];

  buf += count;
  remain -= count;

  deltae = count * 8;
  deltae = ISC_MIN(deltae, ent->pool.entropy);
  total += deltae;
  subtract_entropy(ent, deltae);
  add_pseudo(ent, count * 8);
 }

 partial_output:
 memset(digest, 0, sizeof(digest));

 if (returned != ((void*)0))
  *returned = (length - remain);

 UNLOCK(&ent->lock);

 return (ISC_R_SUCCESS);

 zeroize:

 add_entropy(ent, total);
 memset(data, 0, length);
 memset(digest, 0, sizeof(digest));
 if (returned != ((void*)0))
  *returned = 0;

 UNLOCK(&ent->lock);

 return (ISC_R_NOENTROPY);
}
