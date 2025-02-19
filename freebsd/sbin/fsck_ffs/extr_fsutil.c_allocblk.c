
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ufs2_daddr_t ;
struct TYPE_7__ {long cs_nffree; int cs_nbfree; } ;
struct cg {TYPE_2__ cg_cs; } ;
struct TYPE_6__ {struct cg* b_cg; } ;
struct bufarea {TYPE_1__ b_un; } ;
struct TYPE_8__ {long fs_frag; } ;


 int cg_blksfree (struct cg*) ;
 int cgdirty (struct bufarea*) ;
 struct bufarea* cglookup (int) ;
 int check_cgmagic (int,struct bufarea*) ;
 int clrbit (int ,int) ;
 int dtog (TYPE_3__*,int) ;
 int dtogd (TYPE_3__*,int) ;
 int maxfsblock ;
 long n_blks ;
 TYPE_3__ sblock ;
 int setbmap (int) ;
 scalar_t__ testbmap (int) ;

ufs2_daddr_t
allocblk(long frags)
{
 int i, j, k, cg, baseblk;
 struct bufarea *cgbp;
 struct cg *cgp;

 if (frags <= 0 || frags > sblock.fs_frag)
  return (0);
 for (i = 0; i < maxfsblock - sblock.fs_frag; i += sblock.fs_frag) {
  for (j = 0; j <= sblock.fs_frag - frags; j++) {
   if (testbmap(i + j))
    continue;
   for (k = 1; k < frags; k++)
    if (testbmap(i + j + k))
     break;
   if (k < frags) {
    j += k;
    continue;
   }
   cg = dtog(&sblock, i + j);
   cgbp = cglookup(cg);
   cgp = cgbp->b_un.b_cg;
   if (!check_cgmagic(cg, cgbp))
    return (0);
   baseblk = dtogd(&sblock, i + j);
   for (k = 0; k < frags; k++) {
    setbmap(i + j + k);
    clrbit(cg_blksfree(cgp), baseblk + k);
   }
   n_blks += frags;
   if (frags == sblock.fs_frag)
    cgp->cg_cs.cs_nbfree--;
   else
    cgp->cg_cs.cs_nffree -= frags;
   cgdirty(cgbp);
   return (i + j);
  }
 }
 return (0);
}
