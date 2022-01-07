
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ufs2_daddr_t ;
struct inodesc {scalar_t__ id_blkno; int id_numfrags; } ;
struct dups {scalar_t__ dup; struct dups* next; } ;


 int KEEPON ;
 int SKIP ;
 scalar_t__ chkrange (scalar_t__,int) ;
 int clrbmap (scalar_t__) ;
 struct dups* duplist ;
 int free (char*) ;
 int n_blks ;
 scalar_t__ testbmap (scalar_t__) ;

int
pass4check(struct inodesc *idesc)
{
 struct dups *dlp;
 int nfrags, res = KEEPON;
 ufs2_daddr_t blkno = idesc->id_blkno;

 for (nfrags = idesc->id_numfrags; nfrags > 0; blkno++, nfrags--) {
  if (chkrange(blkno, 1)) {
   res = SKIP;
  } else if (testbmap(blkno)) {
   for (dlp = duplist; dlp; dlp = dlp->next) {
    if (dlp->dup != blkno)
     continue;
    dlp->dup = duplist->dup;
    dlp = duplist;
    duplist = duplist->next;
    free((char *)dlp);
    break;
   }
   if (dlp == ((void*)0)) {
    clrbmap(blkno);
    n_blks--;
   }
  }
 }
 return (res);
}
