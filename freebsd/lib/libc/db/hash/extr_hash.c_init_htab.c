
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int FFACTOR; int* SPARES; int OVFL_POINT; int LAST_FREED; int MAX_BUCKET; int LOW_MASK; int HIGH_MASK; int HDRPAGES; int BSHIFT; int SGSIZE; int DSIZE; } ;
typedef TYPE_1__ HTAB ;
typedef int HASHHDR ;


 int MAX (int,int) ;
 int MINHDRSIZE ;
 int OADDR_OF (int,int) ;
 scalar_t__ __ibitmap (TYPE_1__*,int ,int,int ) ;
 int __log2 (int) ;
 int alloc_segs (TYPE_1__*,int) ;

__attribute__((used)) static int
init_htab(HTAB *hashp, int nelem)
{
 int nbuckets, nsegs, l2;






 nelem = (nelem - 1) / hashp->FFACTOR + 1;

 l2 = __log2(MAX(nelem, 2));
 nbuckets = 1 << l2;

 hashp->SPARES[l2] = l2 + 1;
 hashp->SPARES[l2 + 1] = l2 + 1;
 hashp->OVFL_POINT = l2;
 hashp->LAST_FREED = 2;


 if (__ibitmap(hashp, OADDR_OF(l2, 1), l2 + 1, 0))
  return (-1);

 hashp->MAX_BUCKET = hashp->LOW_MASK = nbuckets - 1;
 hashp->HIGH_MASK = (nbuckets << 1) - 1;
 hashp->HDRPAGES = ((MAX(sizeof(HASHHDR), MINHDRSIZE) - 1) >>
     hashp->BSHIFT) + 1;

 nsegs = (nbuckets - 1) / hashp->SGSIZE + 1;
 nsegs = 1 << __log2(nsegs);

 if (nsegs > hashp->DSIZE)
  hashp->DSIZE = nsegs;
 return (alloc_segs(hashp, nsegs));
}
