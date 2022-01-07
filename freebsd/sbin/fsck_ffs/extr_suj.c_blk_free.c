
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int ufs2_daddr_t ;
typedef scalar_t__ ufs1_daddr_t ;
struct suj_cg {int sc_dirty; struct cg* sc_cgp; } ;
struct cg {int dummy; } ;
struct TYPE_6__ {int fs_frag; } ;


 int * cg_blksfree (struct cg*) ;
 struct suj_cg* cg_lookup (int) ;
 scalar_t__ debug ;
 int dtog (TYPE_1__*,int ) ;
 scalar_t__ dtogd (TYPE_1__*,int ) ;
 int ffs_setblock (TYPE_1__*,int *,scalar_t__) ;
 scalar_t__ fragstoblks (TYPE_1__*,scalar_t__) ;
 int freeblocks ;
 int freefrags ;
 TYPE_1__* fs ;
 scalar_t__ isclr (int *,scalar_t__) ;
 int printf (char*,int,int ,int) ;
 int setbit (int *,scalar_t__) ;

__attribute__((used)) static void
blk_free(ufs2_daddr_t bno, int mask, int frags)
{
 ufs1_daddr_t fragno, cgbno;
 struct suj_cg *sc;
 struct cg *cgp;
 int i, cg;
 uint8_t *blksfree;

 if (debug)
  printf("Freeing %d frags at blk %jd mask 0x%x\n",
      frags, bno, mask);
 cg = dtog(fs, bno);
 sc = cg_lookup(cg);
 cgp = sc->sc_cgp;
 cgbno = dtogd(fs, bno);
 blksfree = cg_blksfree(cgp);






 if (frags == fs->fs_frag && mask == 0) {
  fragno = fragstoblks(fs, cgbno);
  ffs_setblock(fs, blksfree, fragno);
  freeblocks++;
 } else {



  for (i = 0; i < frags; i++)
   if ((mask & (1 << i)) == 0 && isclr(blksfree, cgbno +i)) {
    freefrags++;
    setbit(blksfree, cgbno + i);
   }
 }
 sc->sc_dirty = 1;
}
