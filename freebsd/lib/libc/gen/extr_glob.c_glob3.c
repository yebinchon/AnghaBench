
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned char wchar_t ;
struct glob_limit {int l_readdir_cnt; } ;
struct dirent {char* d_name; } ;
typedef int mbstate_t ;
typedef int mbs ;
struct TYPE_6__ {int gl_flags; int (* gl_closedir ) (int *) ;scalar_t__ gl_readdir; int * gl_errfunc; } ;
typedef TYPE_1__ glob_t ;
typedef int buf ;
typedef int DIR ;
typedef unsigned char Char ;


 scalar_t__ DOT ;
 int E2BIG ;
 int ENAMETOOLONG ;
 int ENOENT ;
 int ENOTDIR ;
 unsigned char EOS ;
 int GLOB_ALTDIRFUNC ;
 int GLOB_LIMIT ;
 scalar_t__ GLOB_LIMIT_READDIR ;
 int GLOB_NOSPACE ;
 scalar_t__ MAXPATHLEN ;
 scalar_t__ MB_LEN_MAX ;
 scalar_t__ UNPROT (unsigned char) ;
 int closedir (int *) ;
 int err_aborted (TYPE_1__*,int,char*) ;
 int errno ;
 scalar_t__ g_Ctoc (unsigned char*,char*,int) ;
 int * g_opendir (unsigned char*,TYPE_1__*) ;
 int glob2 (unsigned char*,unsigned char*,unsigned char*,unsigned char*,TYPE_1__*,struct glob_limit*) ;
 int match (unsigned char*,unsigned char*,unsigned char*) ;
 size_t mbrtowc (unsigned char*,char*,scalar_t__,int *) ;
 int memset (int *,int ,int) ;
 struct dirent* readdir (int *) ;
 struct dirent* stub1 (int *) ;
 int stub2 (int *) ;

__attribute__((used)) static int
glob3(Char *pathbuf, Char *pathend, Char *pathend_last,
      Char *pattern, Char *restpattern,
      glob_t *pglob, struct glob_limit *limit)
{
 struct dirent *dp;
 DIR *dirp;
 int err, too_long, saverrno, saverrno2;
 char buf[MAXPATHLEN + MB_LEN_MAX - 1];

 struct dirent *(*readdirfunc)(DIR *);

 if (pathend > pathend_last) {
  errno = E2BIG;
  return (GLOB_NOSPACE);
 }
 *pathend = EOS;
 if (pglob->gl_errfunc != ((void*)0) &&
     g_Ctoc(pathbuf, buf, sizeof(buf))) {
  errno = E2BIG;
  return (GLOB_NOSPACE);
 }

 saverrno = errno;
 errno = 0;
 if ((dirp = g_opendir(pathbuf, pglob)) == ((void*)0)) {
  if (errno == ENOENT || errno == ENOTDIR)
   return (0);
  err = err_aborted(pglob, errno, buf);
  if (errno == 0)
   errno = saverrno;
  return (err);
 }

 err = 0;


 if (pglob->gl_flags & GLOB_ALTDIRFUNC)
  readdirfunc = (struct dirent *(*)(DIR *))pglob->gl_readdir;
 else
  readdirfunc = readdir;

 errno = 0;

 while ((dp = (*readdirfunc)(dirp)) != ((void*)0)) {
  char *sc;
  Char *dc;
  wchar_t wc;
  size_t clen;
  mbstate_t mbs;

  if ((pglob->gl_flags & GLOB_LIMIT) &&
      limit->l_readdir_cnt++ >= GLOB_LIMIT_READDIR) {
   errno = E2BIG;
   err = GLOB_NOSPACE;
   break;
  }


  if (dp->d_name[0] == '.' && UNPROT(*pattern) != DOT) {
   errno = 0;
   continue;
  }
  memset(&mbs, 0, sizeof(mbs));
  dc = pathend;
  sc = dp->d_name;
  too_long = 1;
  while (dc <= pathend_last) {
   clen = mbrtowc(&wc, sc, MB_LEN_MAX, &mbs);
   if (clen == (size_t)-1 || clen == (size_t)-2) {

    wc = (unsigned char)*sc;
    clen = 1;
    memset(&mbs, 0, sizeof(mbs));
   }
   if ((*dc++ = wc) == EOS) {
    too_long = 0;
    break;
   }
   sc += clen;
  }
  if (too_long && (err = err_aborted(pglob, ENAMETOOLONG,
      buf))) {
   errno = ENAMETOOLONG;
   break;
  }
  if (too_long || !match(pathend, pattern, restpattern)) {
   *pathend = EOS;
   errno = 0;
   continue;
  }
  if (errno == 0)
   errno = saverrno;
  err = glob2(pathbuf, --dc, pathend_last, restpattern,
      pglob, limit);
  if (err)
   break;
  errno = 0;
 }

 saverrno2 = errno;
 if (pglob->gl_flags & GLOB_ALTDIRFUNC)
  (*pglob->gl_closedir)(dirp);
 else
  closedir(dirp);
 errno = saverrno2;

 if (err)
  return (err);

 if (dp == ((void*)0) && errno != 0 &&
     (err = err_aborted(pglob, errno, buf)))
  return (err);

 if (errno == 0)
  errno = saverrno;
 return (0);
}
