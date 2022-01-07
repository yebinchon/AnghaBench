
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 long FILEIO_S_IFCHR ;
 long FILEIO_S_IFDIR ;
 long FILEIO_S_IFREG ;
 long FILEIO_S_IRGRP ;
 long FILEIO_S_IROTH ;
 long FILEIO_S_IRUSR ;
 long FILEIO_S_IWGRP ;
 long FILEIO_S_IWOTH ;
 long FILEIO_S_IWUSR ;
 long FILEIO_S_IXGRP ;
 long FILEIO_S_IXOTH ;
 long FILEIO_S_IXUSR ;
 int S_IFCHR ;
 int S_IFDIR ;
 int S_IFREG ;
 int S_IRGRP ;
 int S_IROTH ;
 int S_IRUSR ;
 int S_IWGRP ;
 int S_IWOTH ;
 int S_IWUSR ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;

__attribute__((used)) static mode_t
remote_fileio_mode_to_host (long mode, int open_call)
{
  mode_t hmode = 0;

  if (!open_call)
    {
      if (mode & FILEIO_S_IFREG)
 hmode |= S_IFREG;
      if (mode & FILEIO_S_IFDIR)
 hmode |= S_IFDIR;
      if (mode & FILEIO_S_IFCHR)
 hmode |= S_IFCHR;
    }
  if (mode & FILEIO_S_IRUSR)
    hmode |= S_IRUSR;
  if (mode & FILEIO_S_IWUSR)
    hmode |= S_IWUSR;
  if (mode & FILEIO_S_IXUSR)
    hmode |= S_IXUSR;
  if (mode & FILEIO_S_IRGRP)
    hmode |= S_IRGRP;
  if (mode & FILEIO_S_IWGRP)
    hmode |= S_IWGRP;
  if (mode & FILEIO_S_IXGRP)
    hmode |= S_IXGRP;
  if (mode & FILEIO_S_IROTH)
    hmode |= S_IROTH;
  if (mode & FILEIO_S_IWOTH)
    hmode |= S_IWOTH;
  if (mode & FILEIO_S_IXOTH)
    hmode |= S_IXOTH;
  return hmode;
}
