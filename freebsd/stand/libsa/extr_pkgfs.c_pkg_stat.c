
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tarfile {int tf_size; } ;
struct stat {int st_size; int st_blocks; int st_mode; } ;
struct open_file {scalar_t__ f_fsdata; } ;


 int EBADF ;
 int get_mode (struct tarfile*) ;
 int memset (struct stat*,int ,int) ;

__attribute__((used)) static int
pkg_stat(struct open_file *f, struct stat *sb)
{
 struct tarfile *tf;

 tf = (struct tarfile *)f->f_fsdata;
 if (tf == ((void*)0))
  return (EBADF);
 memset(sb, 0, sizeof(*sb));
 sb->st_mode = get_mode(tf);
 sb->st_size = tf->tf_size;
 sb->st_blocks = (tf->tf_size + 511) / 512;
 return (0);
}
