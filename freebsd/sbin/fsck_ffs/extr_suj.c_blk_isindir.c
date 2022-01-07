
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int ufs_lbn_t ;
typedef int ufs2_daddr_t ;
struct suj_blk {int sb_recs; } ;
struct jblkrec {scalar_t__ jb_op; } ;
typedef int ino_t ;
struct TYPE_4__ {scalar_t__ sr_rec; } ;
struct TYPE_3__ {int fs_frag; } ;


 scalar_t__ JOP_FREEBLK ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 TYPE_2__* TAILQ_LAST (int *,int ) ;
 scalar_t__ blk_equals (struct jblkrec*,int ,int ,int ,int ) ;
 int blk_isfree (int ) ;
 struct suj_blk* blk_lookup (int ,int ) ;
 TYPE_1__* fs ;
 int srechd ;

__attribute__((used)) static int
blk_isindir(ufs2_daddr_t blk, ino_t ino, ufs_lbn_t lbn)
{
 struct suj_blk *sblk;
 struct jblkrec *brec;

 sblk = blk_lookup(blk, 0);
 if (sblk == ((void*)0))
  return (1);
 if (TAILQ_EMPTY(&sblk->sb_recs))
  return (1);
 brec = (struct jblkrec *)TAILQ_LAST(&sblk->sb_recs, srechd)->sr_rec;
 if (blk_equals(brec, ino, lbn, blk, fs->fs_frag))
  if (brec->jb_op == JOP_FREEBLK)
   return (!blk_isfree(blk));
 return (0);
}
