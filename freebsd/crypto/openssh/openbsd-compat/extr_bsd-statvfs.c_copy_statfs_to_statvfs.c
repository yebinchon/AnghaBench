
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct statvfs {int f_namemax; scalar_t__ f_flag; scalar_t__ f_fsid; int f_favail; int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; int f_frsize; int f_bsize; } ;
struct statfs {scalar_t__ f_flags; int f_ffree; int f_files; int f_bavail; int f_bfree; int f_blocks; int f_bsize; } ;


 int MNAMELEN ;

__attribute__((used)) static void
copy_statfs_to_statvfs(struct statvfs *to, struct statfs *from)
{
 to->f_bsize = from->f_bsize;
 to->f_frsize = from->f_bsize;
 to->f_blocks = from->f_blocks;
 to->f_bfree = from->f_bfree;
 to->f_bavail = from->f_bavail;
 to->f_files = from->f_files;
 to->f_ffree = from->f_ffree;
 to->f_favail = from->f_ffree;
 to->f_fsid = 0;



 to->f_flag = 0;

 to->f_namemax = MNAMELEN;
}
