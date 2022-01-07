
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {unsigned long st_ino; int st_dev; } ;
struct dirent {unsigned long d_ino; char* d_name; } ;
typedef int nextpathbuf ;
typedef int DIR ;


 int CGETS (int,int,char*) ;
 scalar_t__ DEV_DEV_COMPARE (int ,int ) ;
 int ENOENT ;
 scalar_t__ ISDOT (char*) ;
 scalar_t__ ISDOTDOT (char*) ;
 int MAXPATHLEN ;
 int closedir (int *) ;
 int errno ;
 int lstat (char*,struct stat*) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 int stat (char*,struct stat*) ;
 int strerror (int) ;
 int strncpy (char*,char*,size_t) ;
 char* strnrcpy (char*,char*,int) ;
 int xsnprintf (char*,size_t,int ,char*,...) ;

char *
xgetcwd(char *pathname, size_t pathlen)
{
    DIR *dp;
    struct dirent *d;

    struct stat st_root, st_cur, st_next, st_dotdot;
    char pathbuf[MAXPATHLEN], nextpathbuf[MAXPATHLEN * 2];
    char *pathptr, *nextpathptr, *cur_name_add;
    int save_errno = 0;


    if (stat("/", &st_root) == -1) {
 (void) xsnprintf(pathname, pathlen, CGETS(23, 23,
   "getcwd: Cannot stat \"/\" (%s)"),
   strerror(errno));
 return ((void*)0);
    }
    pathbuf[MAXPATHLEN - 1] = '\0';
    pathptr = &pathbuf[MAXPATHLEN - 1];
    nextpathbuf[MAXPATHLEN - 1] = '\0';
    cur_name_add = nextpathptr = &nextpathbuf[MAXPATHLEN - 1];


    if (lstat(".", &st_cur) == -1) {
 (void) xsnprintf(pathname, pathlen, CGETS(23, 24,
    "getcwd: Cannot stat \".\" (%s)"),
    strerror(errno));
 return ((void*)0);
    }
    nextpathptr = strnrcpy(nextpathptr, "../", nextpathptr - nextpathbuf);


    for (;;) {


 if (st_cur.st_ino == st_root.st_ino &&
     DEV_DEV_COMPARE(st_cur.st_dev, st_root.st_dev)) {
     (void) strncpy(pathname, *pathptr != '/' ? "/" : pathptr, pathlen);
     pathname[pathlen - 1] = '\0';
     return pathname;
 }


 if (stat(nextpathptr, &st_dotdot) == -1) {
     (void) xsnprintf(pathname, pathlen, CGETS(23, 25,
        "getcwd: Cannot stat directory \"%s\" (%s)"),
        nextpathptr, strerror(errno));
     return ((void*)0);
 }
 if ((dp = opendir(nextpathptr)) == ((void*)0)) {
     (void) xsnprintf(pathname, pathlen, CGETS(23, 26,
        "getcwd: Cannot open directory \"%s\" (%s)"),
        nextpathptr, strerror(errno));
     return ((void*)0);
 }


 if (DEV_DEV_COMPARE(st_dotdot.st_dev, st_cur.st_dev)) {

     for (d = readdir(dp); d != ((void*)0); d = readdir(dp)) {




  if (d->d_ino == st_cur.st_ino)
      break;

     }
 }
 else {




     for (d = readdir(dp); d != ((void*)0); d = readdir(dp)) {
  if (ISDOT(d->d_name) || ISDOTDOT(d->d_name))
      continue;
  (void)strncpy(cur_name_add, d->d_name,
      (size_t) (&nextpathbuf[sizeof(nextpathbuf) - 1] - cur_name_add));
  if (lstat(nextpathptr, &st_next) == -1) {






      if (save_errno == 0)
   save_errno = errno;
      continue;
  }

  if (st_next.st_ino == st_cur.st_ino &&
      DEV_DEV_COMPARE(st_next.st_dev, st_cur.st_dev))
      break;
     }
 }
 if (d == ((void*)0)) {
     (void) xsnprintf(pathname, pathlen, CGETS(23, 27,
        "getcwd: Cannot find \".\" in \"..\" (%s)"),
        strerror(save_errno ? save_errno : ENOENT));
     closedir(dp);
     return ((void*)0);
 }
 else
     save_errno = 0;
 st_cur = st_dotdot;
 pathptr = strnrcpy(pathptr, d->d_name, pathptr - pathbuf);
 pathptr = strnrcpy(pathptr, "/", pathptr - pathbuf);
 nextpathptr = strnrcpy(nextpathptr, "../", nextpathptr - nextpathbuf);
 *cur_name_add = '\0';
 closedir(dp);
    }
}
