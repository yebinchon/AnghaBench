
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_spare; scalar_t__ st_padding1; scalar_t__ st_padding0; int st_gen; int st_flags; int st_blksize; int st_blocks; int st_size; int st_birthtim; scalar_t__ st_btim_ext; scalar_t__ st_ctim_ext; scalar_t__ st_mtim_ext; scalar_t__ st_atim_ext; int st_ctim; int st_mtim; int st_atim; int st_rdev; int st_gid; int st_uid; int st_mode; int st_nlink; int st_ino; int st_dev; } ;
struct freebsd11_stat {int st_gen; int st_flags; int st_blksize; int st_blocks; int st_size; int st_birthtim; int st_ctim; int st_mtim; int st_atim; int st_rdev; int st_gid; int st_uid; int st_mode; int st_nlink; int st_ino; int st_dev; } ;


 int memset (int ,int ,int) ;

__attribute__((used)) static __inline void
__stat11_to_stat(const struct freebsd11_stat *sb11, struct stat *sb)
{

 sb->st_dev = sb11->st_dev;
 sb->st_ino = sb11->st_ino;
 sb->st_nlink = sb11->st_nlink;
 sb->st_mode = sb11->st_mode;
 sb->st_uid = sb11->st_uid;
 sb->st_gid = sb11->st_gid;
 sb->st_rdev = sb11->st_rdev;
 sb->st_atim = sb11->st_atim;
 sb->st_mtim = sb11->st_mtim;
 sb->st_ctim = sb11->st_ctim;






 sb->st_birthtim = sb11->st_birthtim;
 sb->st_size = sb11->st_size;
 sb->st_blocks = sb11->st_blocks;
 sb->st_blksize = sb11->st_blksize;
 sb->st_flags = sb11->st_flags;
 sb->st_gen = sb11->st_gen;
 sb->st_padding0 = 0;
 sb->st_padding1 = 0;
 memset(sb->st_spare, 0, sizeof(sb->st_spare));
}
