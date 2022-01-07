
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct dirent {scalar_t__ d_fileno; char* d_name; int d_namlen; } ;
typedef scalar_t__ ino_t ;
typedef scalar_t__ dev_t ;
typedef int DIR ;


 int AT_FDCWD ;
 int AT_SYMLINK_NOFOLLOW ;
 int EINVAL ;
 int ENOENT ;
 int ERANGE ;
 scalar_t__ ISDOT (struct dirent*) ;
 int O_CLOEXEC ;
 int O_RDONLY ;
 size_t PATH_MAX ;
 scalar_t__ __getcwd (char*,int) ;
 int _close (int) ;
 int _dirfd (int *) ;
 scalar_t__ _fstat (int ,struct stat*) ;
 int _openat (int ,char*,int) ;
 int bcopy (char*,char*,size_t) ;
 int closedir (int *) ;
 int errno ;
 int * fdopendir (int) ;
 int free (char*) ;
 scalar_t__ fstatat (int ,char*,struct stat*,int ) ;
 scalar_t__ lstat (char*,struct stat*) ;
 char* malloc (size_t) ;
 struct dirent* readdir (int *) ;
 char* reallocf (char*,size_t) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strlen (char*) ;

char *
getcwd(char *pt, size_t size)
{
 struct dirent *dp;
 DIR *dir = ((void*)0);
 dev_t dev;
 ino_t ino;
 int first;
 char *bpt;
 struct stat s;
 dev_t root_dev;
 ino_t root_ino;
 size_t ptsize;
 int save_errno;
 char *ept, c;
 int fd;






 if (pt) {
  ptsize = 0;
  if (!size) {
   errno = EINVAL;
   return (((void*)0));
  }
  if (size == 1) {
   errno = ERANGE;
   return (((void*)0));
  }
  ept = pt + size;
 } else {
  if ((pt = malloc(ptsize = PATH_MAX)) == ((void*)0))
   return (((void*)0));
  ept = pt + ptsize;
 }
 if (__getcwd(pt, ept - pt) == 0) {
  if (*pt != '/') {
   bpt = pt;
   ept = pt + strlen(pt) - 1;
   while (bpt < ept) {
    c = *bpt;
    *bpt++ = *ept;
    *ept-- = c;
   }
  }
  return (pt);
 }
 bpt = ept - 1;
 *bpt = '\0';


 if (stat("/", &s))
  goto err;
 root_dev = s.st_dev;
 root_ino = s.st_ino;

 errno = 0;

 for (first = 1;; first = 0) {

  if (dir != ((void*)0) ? _fstat(_dirfd(dir), &s) : lstat(".", &s))
   goto err;


  ino = s.st_ino;
  dev = s.st_dev;


  if (root_dev == dev && root_ino == ino) {
   *--bpt = '/';





   bcopy(bpt, pt, ept - bpt);
   if (dir)
    (void) closedir(dir);
   return (pt);
  }


  fd = _openat(dir != ((void*)0) ? _dirfd(dir) : AT_FDCWD,
    "..", O_RDONLY | O_CLOEXEC);
  if (fd == -1)
   goto err;
  if (dir)
   (void) closedir(dir);
  if (!(dir = fdopendir(fd)) || _fstat(_dirfd(dir), &s)) {
   _close(fd);
   goto err;
  }






  save_errno = 0;
  if (s.st_dev == dev) {
   for (;;) {
    if (!(dp = readdir(dir)))
     goto notfound;
    if (dp->d_fileno == ino)
     break;
   }
  } else
   for (;;) {
    if (!(dp = readdir(dir)))
     goto notfound;
    if (ISDOT(dp))
     continue;


    if (fstatat(_dirfd(dir), dp->d_name, &s,
        AT_SYMLINK_NOFOLLOW)) {
     if (!save_errno)
      save_errno = errno;
     errno = 0;
     continue;
    }
    if (s.st_dev == dev && s.st_ino == ino)
     break;
   }





  while (bpt - pt < dp->d_namlen + (first ? 1 : 2)) {
   size_t len, off;

   if (!ptsize) {
    errno = ERANGE;
    goto err;
   }
   off = bpt - pt;
   len = ept - bpt;
   if ((pt = reallocf(pt, ptsize *= 2)) == ((void*)0))
    goto err;
   bpt = pt + off;
   ept = pt + ptsize;
   bcopy(bpt, ept - len, len);
   bpt = ept - len;
  }
  if (!first)
   *--bpt = '/';
  bpt -= dp->d_namlen;
  bcopy(dp->d_name, bpt, dp->d_namlen);
 }

notfound:





 if (!errno)
  errno = save_errno ? save_errno : ENOENT;

err:
 save_errno = errno;

 if (ptsize)
  free(pt);
 if (dir)
  (void) closedir(dir);

 errno = save_errno;
 return (((void*)0));
}
