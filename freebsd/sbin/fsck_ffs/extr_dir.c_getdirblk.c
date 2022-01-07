
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ufs2_daddr_t ;
struct bufarea {int b_flags; } ;


 int BT_DIRDATA ;
 int B_INUSE ;
 struct bufarea* getdatablk (int ,long,int ) ;
 struct bufarea* pdirbp ;

__attribute__((used)) static struct bufarea *
getdirblk(ufs2_daddr_t blkno, long size)
{

 if (pdirbp != ((void*)0))
  pdirbp->b_flags &= ~B_INUSE;
 pdirbp = getdatablk(blkno, size, BT_DIRDATA);
 return (pdirbp);
}
