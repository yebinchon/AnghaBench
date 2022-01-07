
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* _PATH_FSTAB ;
 scalar_t__ fsp_set ;
 char const* path_fstab ;

const char *
getfstab(void)
{

 if (fsp_set)
  return (path_fstab);
 else
  return (_PATH_FSTAB);
}
