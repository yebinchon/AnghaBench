
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ LineNo ;
 int * _fs_fp ;
 int errno ;
 int error (int ) ;
 int * fopen (int ,char*) ;
 scalar_t__ fsp_set ;
 int * getenv (char*) ;
 scalar_t__ issetugid () ;
 int path_fstab ;
 int rewind (int *) ;
 int setfstab (int *) ;

int
setfsent(void)
{
 if (_fs_fp) {
  rewind(_fs_fp);
  LineNo = 0;
  return (1);
 }
 if (fsp_set == 0) {
  if (issetugid())
   setfstab(((void*)0));
  else
   setfstab(getenv("PATH_FSTAB"));
 }
 if ((_fs_fp = fopen(path_fstab, "re")) != ((void*)0)) {
  LineNo = 0;
  return (1);
 }
 error(errno);
 return (0);
}
