
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct open_file {scalar_t__ f_fsdata; } ;
struct TYPE_2__ {scalar_t__ di_size; } ;
struct file {scalar_t__ f_seekp; TYPE_1__ f_di; } ;


 int bcopy (char*,void*,size_t) ;
 int buf_read_file (struct open_file*,char**,size_t*) ;

__attribute__((used)) static int
ext2fs_read(struct open_file *f, void *addr, size_t size, size_t *resid)
{
 struct file *fp = (struct file *)f->f_fsdata;
 size_t csize, buf_size;
 char *buf;
 int error = 0;

 while (size != 0) {
  if (fp->f_seekp >= fp->f_di.di_size)
   break;

  error = buf_read_file(f, &buf, &buf_size);
  if (error)
   break;

  csize = size;
  if (csize > buf_size)
   csize = buf_size;

  bcopy(buf, addr, csize);

  fp->f_seekp += csize;
  addr = (char *)addr + csize;
  size -= csize;
 }
 if (resid)
  *resid = size;
 return (error);
}
