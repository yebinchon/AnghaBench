
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct open_file {scalar_t__ f_fsdata; } ;
struct TYPE_2__ {scalar_t__ di_size; } ;
struct file {scalar_t__ f_seekp; TYPE_1__ f_di; } ;
struct ext2dirent {scalar_t__ d_ino; int d_namlen; int d_reclen; int d_name; } ;
typedef scalar_t__ ino_t ;


 int ENOENT ;
 int buf_read_file (struct open_file*,char**,size_t*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static int
search_directory(char *name, struct open_file *f, ino_t *inumber_p)
{
 struct file *fp = (struct file *)f->f_fsdata;
 struct ext2dirent *dp, *edp;
 char *buf;
 size_t buf_size;
 int namlen, length;
 int error;

 length = strlen(name);
 fp->f_seekp = 0;
 while (fp->f_seekp < fp->f_di.di_size) {
  error = buf_read_file(f, &buf, &buf_size);
  if (error)
   return (error);
  dp = (struct ext2dirent *)buf;
  edp = (struct ext2dirent *)(buf + buf_size);
  while (dp < edp) {
   if (dp->d_ino == (ino_t)0)
    goto next;
   namlen = dp->d_namlen;
   if (namlen == length &&
       strncmp(name, dp->d_name, length) == 0) {

    *inumber_p = dp->d_ino;
    return (0);
   }
  next:
   dp = (struct ext2dirent *)((char *)dp + dp->d_reclen);
  }
  fp->f_seekp += buf_size;
 }
 return (ENOENT);
}
