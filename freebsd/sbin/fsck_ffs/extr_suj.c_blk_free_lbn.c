
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int ufs_lbn_t ;
typedef int ufs2_daddr_t ;
typedef int ino_t ;


 int UFS_NDADDR ;
 int VISIT_INDIR ;
 int blk_free (int ,int,int) ;
 int blk_free_visit ;
 int blk_freemask (int ,int ,int ,int) ;
 int indir_visit (int ,int ,int ,scalar_t__*,int ,int ) ;

__attribute__((used)) static void
blk_free_lbn(ufs2_daddr_t blk, ino_t ino, ufs_lbn_t lbn, int frags, int follow)
{
 uint64_t resid;
 int mask;

 mask = blk_freemask(blk, ino, lbn, frags);
 resid = 0;
 if (lbn <= -UFS_NDADDR && follow && mask == 0)
  indir_visit(ino, lbn, blk, &resid, blk_free_visit, VISIT_INDIR);
 else
  blk_free(blk, mask, frags);
}
