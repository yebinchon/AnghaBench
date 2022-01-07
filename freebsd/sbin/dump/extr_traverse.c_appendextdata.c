
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * di_extb; } ;
union dinode {TYPE_1__ dp2; } ;
struct TYPE_6__ {int fs_bsize; } ;
struct TYPE_5__ {int c_extsize; int c_count; int* c_addr; } ;


 int TP_BSIZE ;
 int TP_NINDIR ;
 int UFS_NXADDR ;
 int assert (int) ;
 int howmany (int,int ) ;
 TYPE_3__* sblock ;
 TYPE_2__ spcl ;
 int tp_bshift ;

__attribute__((used)) static int
appendextdata(union dinode *dp)
{
 int i, blks, tbperdb;




 if (spcl.c_extsize == 0)
  return (0);






 if (spcl.c_extsize > UFS_NXADDR * sblock->fs_bsize)
  blks = howmany(UFS_NXADDR * sblock->fs_bsize, TP_BSIZE);
 else
  blks = howmany(spcl.c_extsize, TP_BSIZE);
 if (spcl.c_count + blks > TP_NINDIR)
  return (0);





 tbperdb = sblock->fs_bsize >> tp_bshift;
 assert(spcl.c_count + blks < TP_NINDIR);
 for (i = 0; i < blks; i++)
  if (&dp->dp2.di_extb[i / tbperdb] != 0)
    spcl.c_addr[spcl.c_count + i] = 1;
   else
    spcl.c_addr[spcl.c_count + i] = 0;
 spcl.c_count += blks;
 return (blks);
}
