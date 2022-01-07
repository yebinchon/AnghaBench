
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int st_blksize; } ;
struct TYPE_8__ {int bsize; int nelem; scalar_t__ lorder; scalar_t__ hash; scalar_t__ ffactor; } ;
struct TYPE_7__ {scalar_t__ LORDER; int BSIZE; int BSHIFT; scalar_t__ hash; scalar_t__ FFACTOR; int BITMAPS; int SPARES; int DSIZE; int SSHIFT; int SGSIZE; scalar_t__ NKEYS; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__ HASHINFO ;


 scalar_t__ BIG_ENDIAN ;
 scalar_t__ BYTE_ORDER ;
 int DEF_BUCKET_SHIFT ;
 int DEF_BUCKET_SIZE ;
 int DEF_DIRSIZE ;
 scalar_t__ DEF_FFACTOR ;
 int DEF_SEGSIZE ;
 int DEF_SEGSIZE_SHIFT ;
 int EINVAL ;
 scalar_t__ LITTLE_ENDIAN ;
 int MAX_BSIZE ;
 scalar_t__ __default_hash ;
 void* __log2 (int) ;
 int errno ;
 scalar_t__ init_htab (TYPE_1__*,int) ;
 int memset (int ,int ,int) ;
 scalar_t__ stat (char const*,struct stat*) ;

__attribute__((used)) static HTAB *
init_hash(HTAB *hashp, const char *file, const HASHINFO *info)
{
 struct stat statbuf;
 int nelem;

 nelem = 1;
 hashp->NKEYS = 0;
 hashp->LORDER = BYTE_ORDER;
 hashp->BSIZE = DEF_BUCKET_SIZE;
 hashp->BSHIFT = DEF_BUCKET_SHIFT;
 hashp->SGSIZE = DEF_SEGSIZE;
 hashp->SSHIFT = DEF_SEGSIZE_SHIFT;
 hashp->DSIZE = DEF_DIRSIZE;
 hashp->FFACTOR = DEF_FFACTOR;
 hashp->hash = __default_hash;
 memset(hashp->SPARES, 0, sizeof(hashp->SPARES));
 memset(hashp->BITMAPS, 0, sizeof (hashp->BITMAPS));


 if (file != ((void*)0)) {
  if (stat(file, &statbuf))
   return (((void*)0));
  hashp->BSIZE = statbuf.st_blksize;
  if (hashp->BSIZE > MAX_BSIZE)
   hashp->BSIZE = MAX_BSIZE;
  hashp->BSHIFT = __log2(hashp->BSIZE);
 }

 if (info) {
  if (info->bsize) {

   hashp->BSHIFT = __log2(info->bsize);
   hashp->BSIZE = 1 << hashp->BSHIFT;
   if (hashp->BSIZE > MAX_BSIZE) {
    errno = EINVAL;
    return (((void*)0));
   }
  }
  if (info->ffactor)
   hashp->FFACTOR = info->ffactor;
  if (info->hash)
   hashp->hash = info->hash;
  if (info->nelem)
   nelem = info->nelem;
  if (info->lorder) {
   if (info->lorder != BIG_ENDIAN &&
       info->lorder != LITTLE_ENDIAN) {
    errno = EINVAL;
    return (((void*)0));
   }
   hashp->LORDER = info->lorder;
  }
 }

 if (init_htab(hashp, nelem))
  return (((void*)0));
 else
  return (hashp);
}
