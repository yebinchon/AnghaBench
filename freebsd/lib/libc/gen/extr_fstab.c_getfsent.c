
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fstab {int dummy; } ;


 int _fs_fp ;
 struct fstab _fs_fstab ;
 int fstabscan () ;
 int setfsent () ;

struct fstab *
getfsent(void)
{

 if ((!_fs_fp && !setfsent()) || !fstabscan())
  return (((void*)0));
 return (&_fs_fstab);
}
