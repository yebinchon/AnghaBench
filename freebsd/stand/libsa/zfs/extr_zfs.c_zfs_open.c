
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zfsmount {int dummy; } ;
struct open_file {struct file* f_fsdata; int * f_dev; scalar_t__ f_devdata; } ;
struct file {scalar_t__ f_seekp; int f_dnode; } ;


 int EINVAL ;
 int ENOMEM ;
 struct file* calloc (int,int) ;
 int free (struct file*) ;
 int zfs_dev ;
 int zfs_lookup (struct zfsmount*,char const*,int *) ;

__attribute__((used)) static int
zfs_open(const char *upath, struct open_file *f)
{
 struct zfsmount *mount = (struct zfsmount *)f->f_devdata;
 struct file *fp;
 int rc;

 if (f->f_dev != &zfs_dev)
  return (EINVAL);


 fp = calloc(1, sizeof(struct file));
 if (fp == ((void*)0))
  return (ENOMEM);
 f->f_fsdata = fp;

 rc = zfs_lookup(mount, upath, &fp->f_dnode);
 fp->f_seekp = 0;
 if (rc) {
  f->f_fsdata = ((void*)0);
  free(fp);
 }
 return (rc);
}
