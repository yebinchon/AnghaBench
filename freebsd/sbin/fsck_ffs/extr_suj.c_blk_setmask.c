
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jblkrec {int jb_oldfrags; int jb_frags; } ;



__attribute__((used)) static void
blk_setmask(struct jblkrec *brec, int *mask)
{
 int i;

 for (i = brec->jb_oldfrags; i < brec->jb_oldfrags + brec->jb_frags; i++)
  *mask |= 1 << i;
}
