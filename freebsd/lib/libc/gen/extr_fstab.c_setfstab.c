
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 char* _PATH_FSTAB ;
 int fsp_set ;
 char* fstab_path ;
 char* path_fstab ;
 int strncpy (char*,char const*,int) ;

void
setfstab(const char *file)
{

 if (file == ((void*)0)) {
  path_fstab = _PATH_FSTAB;
 } else {
  strncpy(fstab_path, file, PATH_MAX);
  fstab_path[PATH_MAX - 1] = '\0';
  path_fstab = fstab_path;
 }
 fsp_set = 1;

 return;
}
