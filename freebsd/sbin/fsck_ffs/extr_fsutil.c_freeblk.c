
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs2_daddr_t ;
struct inodesc {long id_numfrags; int id_blkno; } ;


 int pass4check (struct inodesc*) ;

void
freeblk(ufs2_daddr_t blkno, long frags)
{
 struct inodesc idesc;

 idesc.id_blkno = blkno;
 idesc.id_numfrags = frags;
 (void)pass4check(&idesc);
}
