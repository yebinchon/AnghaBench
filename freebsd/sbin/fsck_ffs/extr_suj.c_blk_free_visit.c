
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs_lbn_t ;
typedef int ufs2_daddr_t ;
typedef int ino_t ;


 int blk_free (int ,int ,int) ;
 int blk_freemask (int ,int ,int ,int) ;

__attribute__((used)) static void
blk_free_visit(ino_t ino, ufs_lbn_t lbn, ufs2_daddr_t blk, int frags)
{

 blk_free(blk, blk_freemask(blk, ino, lbn, frags), frags);
}
