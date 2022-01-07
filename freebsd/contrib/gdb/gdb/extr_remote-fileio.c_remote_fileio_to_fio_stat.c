
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_ctime; int st_mtime; int st_atime; scalar_t__ st_blksize; scalar_t__ st_size; scalar_t__ st_blocks; scalar_t__ st_rdev; scalar_t__ st_gid; scalar_t__ st_uid; scalar_t__ st_nlink; int st_mode; scalar_t__ st_ino; } ;
struct fio_stat {int fst_ctime; int fst_mtime; int fst_atime; int fst_blocks; int fst_blksize; int fst_size; int fst_rdev; int fst_gid; int fst_uid; int fst_nlink; int fst_mode; int fst_ino; } ;
typedef int LONGEST ;


 int remote_fileio_to_fio_mode (int ,int ) ;
 int remote_fileio_to_fio_time (int ,int ) ;
 int remote_fileio_to_fio_uint (long,int ) ;
 int remote_fileio_to_fio_ulong (int,int ) ;

__attribute__((used)) static void
remote_fileio_to_fio_stat (struct stat *st, struct fio_stat *fst)
{

  remote_fileio_to_fio_uint ((long) st->st_ino, fst->fst_ino);
  remote_fileio_to_fio_mode (st->st_mode, fst->fst_mode);
  remote_fileio_to_fio_uint ((long) st->st_nlink, fst->fst_nlink);
  remote_fileio_to_fio_uint ((long) st->st_uid, fst->fst_uid);
  remote_fileio_to_fio_uint ((long) st->st_gid, fst->fst_gid);
  remote_fileio_to_fio_uint ((long) st->st_rdev, fst->fst_rdev);
  remote_fileio_to_fio_ulong ((LONGEST) st->st_size, fst->fst_size);
  remote_fileio_to_fio_ulong ((LONGEST) st->st_blksize, fst->fst_blksize);






  remote_fileio_to_fio_ulong (((LONGEST) st->st_size + st->st_blksize - 1)
         / (LONGEST) st->st_blksize,
         fst->fst_blocks);

  remote_fileio_to_fio_time (st->st_atime, fst->fst_atime);
  remote_fileio_to_fio_time (st->st_mtime, fst->fst_mtime);
  remote_fileio_to_fio_time (st->st_ctime, fst->fst_ctime);
}
