
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct open_file {scalar_t__ f_fsdata; } ;
struct TYPE_2__ {int di_size; } ;
struct file {int f_seekp; TYPE_1__ f_di; } ;
typedef int off_t ;


 int EINVAL ;



 int errno ;

__attribute__((used)) static off_t
ext2fs_seek(struct open_file *f, off_t offset, int where)
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
  fp->f_seekp = fp->f_di.di_size - offset;
  break;
 default:
  errno = EINVAL;
  return (-1);
 }
 return (fp->f_seekp);
}
