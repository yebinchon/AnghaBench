
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union dinode {int dummy; } dinode ;
struct TYPE_2__ {long fs_bsize; } ;


 long DIP (union dinode*,int ) ;
 long SF_SNAPSHOT ;
 long TP_BSIZE ;
 long TP_NINDIR ;
 long UFS_NDADDR ;
 long dbtob (long) ;
 int di_blocks ;
 int di_flags ;
 int di_size ;
 long howmany (long,long) ;
 TYPE_1__* sblock ;

__attribute__((used)) static long
blockest(union dinode *dp)
{
 long blkest, sizeest;
 if ((DIP(dp, di_flags) & SF_SNAPSHOT) != 0)
  return (1);
 blkest = howmany(dbtob(DIP(dp, di_blocks)), TP_BSIZE);
 sizeest = howmany(DIP(dp, di_size), TP_BSIZE);
 if (blkest > sizeest)
  blkest = sizeest;
 if (DIP(dp, di_size) > sblock->fs_bsize * UFS_NDADDR) {

  blkest += howmany(sizeest -
      UFS_NDADDR * sblock->fs_bsize / TP_BSIZE, TP_NINDIR);
 }
 return (blkest + 1);
}
