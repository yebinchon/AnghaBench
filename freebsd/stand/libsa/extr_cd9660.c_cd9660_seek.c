
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {scalar_t__ f_fsdata; } ;
struct file {int f_off; int f_size; } ;
typedef int off_t ;






__attribute__((used)) static off_t
cd9660_seek(struct open_file *f, off_t offset, int where)
{
 struct file *fp = (struct file *)f->f_fsdata;

 switch (where) {
 case 128:
  fp->f_off = offset;
  break;
 case 130:
  fp->f_off += offset;
  break;
 case 129:
  fp->f_off = fp->f_size - offset;
  break;
 default:
  return -1;
 }
 return fp->f_off;
}
