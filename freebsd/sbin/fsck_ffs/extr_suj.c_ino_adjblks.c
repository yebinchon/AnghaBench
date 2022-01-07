
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dinode {int dummy; } dinode ;
typedef int uintmax_t ;
typedef scalar_t__ uint64_t ;
struct suj_ino {scalar_t__ si_ino; } ;
typedef scalar_t__ off_t ;
typedef scalar_t__ ino_t ;


 scalar_t__ DIP (union dinode*,int ) ;
 int DIP_SET (union dinode*,int ,scalar_t__) ;
 scalar_t__ UFS_NDADDR ;
 int VISIT_EXT ;
 int VISIT_INDIR ;
 scalar_t__ debug ;
 int di_blocks ;
 int di_mode ;
 int di_size ;
 int fs ;
 scalar_t__ fsbtodb (int ,scalar_t__) ;
 int ino_dirty (scalar_t__) ;
 union dinode* ino_read (scalar_t__) ;
 int ino_trunc (scalar_t__,scalar_t__) ;
 scalar_t__ ino_visit (union dinode*,scalar_t__,int ,int) ;
 scalar_t__ lblktosize (int ,scalar_t__) ;
 int null_visit ;
 int printf (char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ visitlbn ;

__attribute__((used)) static void
ino_adjblks(struct suj_ino *sino)
{
 union dinode *ip;
 uint64_t blocks;
 uint64_t frags;
 off_t isize;
 off_t size;
 ino_t ino;

 ino = sino->si_ino;
 ip = ino_read(ino);

 if (DIP(ip, di_mode) == 0)
  return;






 visitlbn = 0;
 frags = ino_visit(ip, ino, null_visit, VISIT_INDIR | VISIT_EXT);
 blocks = fsbtodb(fs, frags);






 if (visitlbn >= UFS_NDADDR) {
  isize = DIP(ip, di_size);
  size = lblktosize(fs, visitlbn + 1);
  if (isize > size)
   isize = size;

  ino_trunc(sino->si_ino, isize);
  return;
 }
 if (blocks == DIP(ip, di_blocks))
  return;
 if (debug)
  printf("ino %ju adjusting block count from %jd to %jd\n",
      (uintmax_t)ino, DIP(ip, di_blocks), blocks);
 DIP_SET(ip, di_blocks, blocks);
 ino_dirty(ino);
}
