
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {scalar_t__ st_dev; scalar_t__ st_ino; } ;
struct dirent {scalar_t__ d_fileno; int d_namlen; int d_name; } ;
typedef scalar_t__ ino_t ;
typedef scalar_t__ dev_t ;
typedef int DIR ;


 int EINVAL ;
 int ENOENT ;
 int ERANGE ;
 scalar_t__ ISDOT (struct dirent*) ;
 int MAXNAMLEN ;
 size_t MAXPATHLEN ;
 int closedir (int *) ;
 int dirfd (int *) ;
 int errno ;
 int free (char*) ;
 scalar_t__ fstat (int ,struct stat*) ;
 scalar_t__ lstat (char*,struct stat*) ;
 char* malloc (size_t) ;
 int memcpy (char*,int ,int) ;
 int memmove (char*,char*,size_t) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 char* realloc (char*,size_t) ;
 scalar_t__ stat (char*,struct stat*) ;

char *
getcwd(char *pt, size_t size)
{
 struct dirent *dp;
 DIR *dir = ((void*)0);
 dev_t dev;
 ino_t ino;
 int first;
 char *bpt, *bup;
 struct stat s;
 dev_t root_dev;
 ino_t root_ino;
 size_t ptsize, upsize;
 int save_errno;
 char *ept, *eup, *up;






 if (pt) {
  ptsize = 0;
  if (!size) {
   errno = EINVAL;
   return (((void*)0));
  }
  ept = pt + size;
 } else {
  if ((pt = malloc(ptsize = MAXPATHLEN)) == ((void*)0))
   return (((void*)0));
  ept = pt + ptsize;
 }
 bpt = ept - 1;
 *bpt = '\0';






 if ((up = malloc(upsize = MAXPATHLEN)) == ((void*)0))
  goto err;
 eup = up + upsize;
 bup = up;
 up[0] = '.';
 up[1] = '\0';


 if (stat("/", &s))
  goto err;
 root_dev = s.st_dev;
 root_ino = s.st_ino;

 errno = 0;

 for (first = 1;; first = 0) {

  if (lstat(up, &s))
   goto err;


  ino = s.st_ino;
  dev = s.st_dev;


  if (root_dev == dev && root_ino == ino) {
   *--bpt = '/';





   memmove(pt, bpt, ept - bpt);
   free(up);
   return (pt);
  }






  if (bup + 3 + MAXNAMLEN + 1 >= eup) {
   char *nup;

   if ((nup = realloc(up, upsize *= 2)) == ((void*)0))
    goto err;
   bup = nup + (bup - up);
   up = nup;
   eup = up + upsize;
  }
  *bup++ = '.';
  *bup++ = '.';
  *bup = '\0';


  if (!(dir = opendir(up)) || fstat(dirfd(dir), &s))
   goto err;


  *bup++ = '/';






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
    memcpy(bup, dp->d_name, dp->d_namlen + 1);


    if (lstat(up, &s)) {
     if (!save_errno)
      save_errno = errno;
     errno = 0;
     continue;
    }
    if (s.st_dev == dev && s.st_ino == ino)
     break;
   }





  if (bpt - pt < dp->d_namlen + (first ? 1 : 2)) {
   size_t len;
   char *npt;

   if (!ptsize) {
    errno = ERANGE;
    goto err;
   }
   len = ept - bpt;
   if ((npt = realloc(pt, ptsize *= 2)) == ((void*)0))
    goto err;
   bpt = npt + (bpt - pt);
   pt = npt;
   ept = pt + ptsize;
   memmove(ept - len, bpt, len);
   bpt = ept - len;
  }
  if (!first)
   *--bpt = '/';
  bpt -= dp->d_namlen;
  memcpy(bpt, dp->d_name, dp->d_namlen);
  (void)closedir(dir);


  *bup = '\0';
 }

notfound:





 if (!errno)
  errno = save_errno ? save_errno : ENOENT;

err:
 save_errno = errno;

 if (ptsize)
  free(pt);
 free(up);
 if (dir)
  (void)closedir(dir);

 errno = save_errno;

 return (((void*)0));
}
