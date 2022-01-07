
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dinode {int dummy; } dinode ;
typedef int ufs_lbn_t ;
typedef scalar_t__ ufs2_daddr_t ;
typedef int ino_t ;


 scalar_t__ DIP (union dinode*,int ) ;
 int di_mode ;
 int di_nlink ;
 scalar_t__ ino_blkatoff (union dinode*,int ,int ,int*) ;
 union dinode* ino_read (int ) ;

__attribute__((used)) static int
blk_isat(ino_t ino, ufs_lbn_t lbn, ufs2_daddr_t blk, int *frags)
{
 union dinode *ip;
 ufs2_daddr_t nblk;

 ip = ino_read(ino);

 if (DIP(ip, di_nlink) == 0 || DIP(ip, di_mode) == 0)
  return (0);
 nblk = ino_blkatoff(ip, ino, lbn, frags);

 return (nblk == blk);
}
