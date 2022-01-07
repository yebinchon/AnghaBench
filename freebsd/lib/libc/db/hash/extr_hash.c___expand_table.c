
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {int MAX_BUCKET; int LOW_MASK; int SSHIFT; int nsegs; int DSIZE; int OVFL_POINT; int HIGH_MASK; int * SPARES; int exsegs; int SGSIZE; int ** dir; } ;
typedef int SEGMENT ;
typedef TYPE_1__ HTAB ;


 int __log2 (int) ;
 int __split_page (TYPE_1__*,int,int) ;
 int * calloc (int ,int) ;
 int hash_expansions ;
 int hash_realloc (int ***,int,int) ;

int
__expand_table(HTAB *hashp)
{
 u_int32_t old_bucket, new_bucket;
 int dirsize, new_segnum, spare_ndx;




 new_bucket = ++hashp->MAX_BUCKET;
 old_bucket = (hashp->MAX_BUCKET & hashp->LOW_MASK);

 new_segnum = new_bucket >> hashp->SSHIFT;


 if (new_segnum >= hashp->nsegs) {

  if (new_segnum >= hashp->DSIZE) {

   dirsize = hashp->DSIZE * sizeof(SEGMENT *);
   if (!hash_realloc(&hashp->dir, dirsize, dirsize << 1))
    return (-1);
   hashp->DSIZE = dirsize << 1;
  }
  if ((hashp->dir[new_segnum] =
      calloc(hashp->SGSIZE, sizeof(SEGMENT))) == ((void*)0))
   return (-1);
  hashp->exsegs++;
  hashp->nsegs++;
 }





 spare_ndx = __log2(hashp->MAX_BUCKET + 1);
 if (spare_ndx > hashp->OVFL_POINT) {
  hashp->SPARES[spare_ndx] = hashp->SPARES[hashp->OVFL_POINT];
  hashp->OVFL_POINT = spare_ndx;
 }

 if (new_bucket > hashp->HIGH_MASK) {

  hashp->LOW_MASK = hashp->HIGH_MASK;
  hashp->HIGH_MASK = new_bucket | hashp->LOW_MASK;
 }

 return (__split_page(hashp, old_bucket, new_bucket));
}
