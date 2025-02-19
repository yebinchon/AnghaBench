
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct open_file {int f_flags; int * f_devdata; TYPE_2__* f_dev; TYPE_1__* f_ops; int * f_rabuf; } ;
struct TYPE_4__ {int (* dv_close ) (struct open_file*) ;} ;
struct TYPE_3__ {int (* fo_close ) (struct open_file*) ;} ;


 int EBADF ;
 int F_NODEV ;
 int F_RAW ;
 unsigned int SOPEN_MAX ;
 int devclose (struct open_file*) ;
 int errno ;
 struct open_file* files ;
 int free (int *) ;
 int stub1 (struct open_file*) ;
 int stub2 (struct open_file*) ;

int
close(int fd)
{
 struct open_file *f = &files[fd];
 int err1 = 0, err2 = 0;

 if ((unsigned)fd >= SOPEN_MAX || f->f_flags == 0) {
  errno = EBADF;
  return (-1);
 }
 free(f->f_rabuf);
 f->f_rabuf = ((void*)0);

 if (!(f->f_flags & F_RAW) && f->f_ops)
  err1 = (f->f_ops->fo_close)(f);
 if (!(f->f_flags & F_NODEV) && f->f_dev)
  err2 = (f->f_dev->dv_close)(f);
 if (f->f_devdata != ((void*)0))
  devclose(f);
 f->f_flags = 0;
 if (err1) {
  errno = err1;
  return (-1);
 }
 if (err2) {
  errno = err2;
  return (-1);
 }
 return (0);
}
