
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int * bitmaps; int * spares; int h_charkey; int hdrpages; int nkeys; int ffactor; int low_mask; int high_mask; int max_bucket; int last_freed; int ovfl_point; int sshift; int ssize; int dsize; int bshift; int bsize; int lorder; int version; int magic; } ;
struct TYPE_4__ {TYPE_2__ hdr; } ;
typedef TYPE_1__ HTAB ;
typedef TYPE_2__ HASHHDR ;


 int M_16_SWAP (int ) ;
 int M_32_SWAP (int ) ;
 int NCACHED ;

__attribute__((used)) static void
swap_header(HTAB *hashp)
{
 HASHHDR *hdrp;
 int i;

 hdrp = &hashp->hdr;

 M_32_SWAP(hdrp->magic);
 M_32_SWAP(hdrp->version);
 M_32_SWAP(hdrp->lorder);
 M_32_SWAP(hdrp->bsize);
 M_32_SWAP(hdrp->bshift);
 M_32_SWAP(hdrp->dsize);
 M_32_SWAP(hdrp->ssize);
 M_32_SWAP(hdrp->sshift);
 M_32_SWAP(hdrp->ovfl_point);
 M_32_SWAP(hdrp->last_freed);
 M_32_SWAP(hdrp->max_bucket);
 M_32_SWAP(hdrp->high_mask);
 M_32_SWAP(hdrp->low_mask);
 M_32_SWAP(hdrp->ffactor);
 M_32_SWAP(hdrp->nkeys);
 M_32_SWAP(hdrp->hdrpages);
 M_32_SWAP(hdrp->h_charkey);
 for (i = 0; i < NCACHED; i++) {
  M_32_SWAP(hdrp->spares[i]);
  M_16_SWAP(hdrp->bitmaps[i]);
 }
}
