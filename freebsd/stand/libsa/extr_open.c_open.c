
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct open_file {int f_flags; struct fs_ops* f_ops; TYPE_1__* f_dev; int * f_rabuf; int * f_devdata; scalar_t__ f_offset; } ;
struct fs_ops {int (* fo_open ) (char const*,struct open_file*) ;} ;
struct TYPE_2__ {int (* dv_close ) (struct open_file*) ;} ;


 int EINVAL ;
 int EMFILE ;
 int ENOENT ;
 int F_NODEV ;
 int F_RAW ;
 int devclose (struct open_file*) ;
 int devopen (struct open_file*,char const*,char const**) ;
 int errno ;
 struct fs_ops* exclusive_file_system ;
 struct fs_ops** file_system ;
 struct open_file* files ;
 int o_gethandle () ;
 int o_rainit (struct open_file*) ;
 int stub1 (char const*,struct open_file*) ;
 int stub2 (char const*,struct open_file*) ;
 int stub3 (struct open_file*) ;

int
open(const char *fname, int mode)
{
 struct fs_ops *fs;
 struct open_file *f;
 int fd, i, error, besterror;
 const char *file;

 if ((fd = o_gethandle()) == -1) {
  errno = EMFILE;
  return (-1);
 }

 f = &files[fd];
 f->f_flags = mode + 1;
 f->f_dev = ((void*)0);
 f->f_ops = ((void*)0);
 f->f_offset = 0;
 f->f_devdata = ((void*)0);
 file = ((void*)0);

 if (exclusive_file_system != ((void*)0)) {
  fs = exclusive_file_system;
  error = (fs->fo_open)(fname, f);
  if (error == 0)
   goto ok;
  goto err;
 }

 error = devopen(f, fname, &file);
 if (error ||
     (((f->f_flags & F_NODEV) == 0) && f->f_dev == ((void*)0)))
  goto err;


 if (file == ((void*)0) || *file == '\0') {
  f->f_flags |= F_RAW;
  f->f_rabuf = ((void*)0);
  return (fd);
 }


 besterror = ENOENT;
 for (i = 0; file_system[i] != ((void*)0); i++) {
  fs = file_system[i];
  error = (fs->fo_open)(file, f);
  if (error == 0)
   goto ok;
  if (error != EINVAL)
   besterror = error;
 }
 error = besterror;

 if ((f->f_flags & F_NODEV) == 0 && f->f_dev != ((void*)0))
  f->f_dev->dv_close(f);
 if (error)
  devclose(f);

err:
 f->f_flags = 0;
 errno = error;
 return (-1);

ok:
 f->f_ops = fs;
 o_rainit(f);
 return (fd);
}
