
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct partition {int p_offset; scalar_t__ p_size; } ;
struct disklabel {int d_npartitions; scalar_t__ d_secperunit; struct partition* d_partitions; } ;


 int BBSIZE ;
 int RAW_PART ;
 int secsize ;

__attribute__((used)) static void
fixlabel(struct disklabel *lp)
{
 struct partition *dp;
 int i;

 for (i = 0; i < lp->d_npartitions; i++) {
  if (i == RAW_PART)
   continue;
  if (lp->d_partitions[i].p_size)
   return;
 }

 dp = &lp->d_partitions[0];
 dp->p_offset = BBSIZE / secsize;
 dp->p_size = lp->d_secperunit - dp->p_offset;
}
