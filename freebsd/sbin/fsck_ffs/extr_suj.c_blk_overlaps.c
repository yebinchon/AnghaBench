
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ufs2_daddr_t ;
struct jblkrec {scalar_t__ jb_blkno; scalar_t__ jb_oldfrags; scalar_t__ jb_frags; } ;



__attribute__((used)) static int
blk_overlaps(struct jblkrec *brec, ufs2_daddr_t start, int frags)
{
 ufs2_daddr_t bstart;
 ufs2_daddr_t bend;
 ufs2_daddr_t end;

 end = start + frags;
 bstart = brec->jb_blkno + brec->jb_oldfrags;
 bend = bstart + brec->jb_frags;
 if (start < bend && end > bstart)
  return (1);
 return (0);
}
