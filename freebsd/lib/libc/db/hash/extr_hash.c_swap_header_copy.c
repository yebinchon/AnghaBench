
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * bitmaps; int * spares; int h_charkey; int hdrpages; int nkeys; int ffactor; int low_mask; int high_mask; int max_bucket; int last_freed; int ovfl_point; int sshift; int ssize; int dsize; int bshift; int bsize; int lorder; int version; int magic; } ;
typedef TYPE_1__ HASHHDR ;


 int NCACHED ;
 int P_16_COPY (int ,int ) ;
 int P_32_COPY (int ,int ) ;

__attribute__((used)) static void
swap_header_copy(HASHHDR *srcp, HASHHDR *destp)
{
 int i;

 P_32_COPY(srcp->magic, destp->magic);
 P_32_COPY(srcp->version, destp->version);
 P_32_COPY(srcp->lorder, destp->lorder);
 P_32_COPY(srcp->bsize, destp->bsize);
 P_32_COPY(srcp->bshift, destp->bshift);
 P_32_COPY(srcp->dsize, destp->dsize);
 P_32_COPY(srcp->ssize, destp->ssize);
 P_32_COPY(srcp->sshift, destp->sshift);
 P_32_COPY(srcp->ovfl_point, destp->ovfl_point);
 P_32_COPY(srcp->last_freed, destp->last_freed);
 P_32_COPY(srcp->max_bucket, destp->max_bucket);
 P_32_COPY(srcp->high_mask, destp->high_mask);
 P_32_COPY(srcp->low_mask, destp->low_mask);
 P_32_COPY(srcp->ffactor, destp->ffactor);
 P_32_COPY(srcp->nkeys, destp->nkeys);
 P_32_COPY(srcp->hdrpages, destp->hdrpages);
 P_32_COPY(srcp->h_charkey, destp->h_charkey);
 for (i = 0; i < NCACHED; i++) {
  P_32_COPY(srcp->spares[i], destp->spares[i]);
  P_16_COPY(srcp->bitmaps[i], destp->bitmaps[i]);
 }
}
