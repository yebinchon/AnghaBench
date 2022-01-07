
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union dinode {int dummy; } dinode ;
typedef int uintmax_t ;
typedef scalar_t__ ino_t ;


 int DIP (union dinode*,int ) ;
 int DIP_SET (union dinode*,int ,int) ;
 int IFDIR ;
 int IFMT ;
 scalar_t__ debug ;
 int di_mode ;
 int di_nlink ;
 int err_suj (char*,scalar_t__,int) ;
 int ino_dirty (scalar_t__) ;
 union dinode* ino_read (scalar_t__) ;
 int ino_reclaim (union dinode*,scalar_t__,int) ;
 int printf (char*,int ,int,int) ;

__attribute__((used)) static void
ino_decr(ino_t ino)
{
 union dinode *ip;
 int reqlink;
 int nlink;
 int mode;

 ip = ino_read(ino);
 nlink = DIP(ip, di_nlink);
 mode = DIP(ip, di_mode);
 if (nlink < 1)
  err_suj("Inode %d link count %d invalid\n", ino, nlink);
 if (mode == 0)
  err_suj("Inode %d has a link of %d with 0 mode\n", ino, nlink);
 nlink--;
 if ((mode & IFMT) == IFDIR)
  reqlink = 2;
 else
  reqlink = 1;
 if (nlink < reqlink) {
  if (debug)
   printf("ino %ju not enough links to live %d < %d\n",
       (uintmax_t)ino, nlink, reqlink);
  ino_reclaim(ip, ino, mode);
  return;
 }
 DIP_SET(ip, di_nlink, nlink);
 ino_dirty(ino);
}
