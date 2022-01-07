
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fstab {int fs_spec; } ;


 struct fstab _fs_fstab ;
 scalar_t__ fstabscan () ;
 scalar_t__ setfsent () ;
 int strcmp (int ,char const*) ;

struct fstab *
getfsspec(const char *name)
{

 if (setfsent())
  while (fstabscan())
   if (!strcmp(_fs_fstab.fs_spec, name))
    return (&_fs_fstab);
 return (((void*)0));
}
