
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_size; int st_gid; int st_uid; int st_mode; } ;
struct open_file {scalar_t__ f_fsdata; } ;
struct TYPE_2__ {int di_size; int di_gid; int di_uid; int di_mode; } ;
struct file {TYPE_1__ f_di; } ;



__attribute__((used)) static int
ext2fs_stat(struct open_file *f, struct stat *sb)
{
 struct file *fp = (struct file *)f->f_fsdata;


 sb->st_mode = fp->f_di.di_mode;
 sb->st_uid = fp->f_di.di_uid;
 sb->st_gid = fp->f_di.di_gid;
 sb->st_size = fp->f_di.di_size;
 return (0);
}
