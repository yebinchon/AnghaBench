
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; } ;
struct open_file {scalar_t__ f_fsdata; } ;
struct file {int f_seekp; } ;
typedef int off_t ;


 int EINVAL ;



 int errno ;
 int zfs_stat (struct open_file*,struct stat*) ;

__attribute__((used)) static off_t
zfs_seek(struct open_file *f, off_t offset, int where)
{
 struct file *fp = (struct file *)f->f_fsdata;

 switch (where) {
 case 128:
  fp->f_seekp = offset;
  break;
 case 130:
  fp->f_seekp += offset;
  break;
 case 129:
     {
  struct stat sb;
  int error;

  error = zfs_stat(f, &sb);
  if (error != 0) {
   errno = error;
   return (-1);
  }
  fp->f_seekp = sb.st_size - offset;
  break;
     }
 default:
  errno = EINVAL;
  return (-1);
 }
 return (fp->f_seekp);
}
