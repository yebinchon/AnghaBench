
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct glob_lim {int glim_readdir; } ;
struct dirent {scalar_t__* d_name; } ;
struct TYPE_5__ {int gl_flags; int (* gl_closedir ) (void*) ;struct dirent* (* gl_readdir ) (void*) ;scalar_t__ (* gl_errfunc ) (char*,scalar_t__) ;} ;
typedef TYPE_1__ glob_t ;
typedef int buf ;
typedef void DIR ;
typedef scalar_t__ Char ;


 scalar_t__ DOT ;
 scalar_t__ EOS ;
 int GLOB_ABORTED ;
 int GLOB_ALTDIRFUNC ;
 int GLOB_ERR ;
 int GLOB_LIMIT ;
 scalar_t__ GLOB_LIMIT_READDIR ;
 int GLOB_LIMIT_RECUR ;
 int GLOB_NOSPACE ;
 int MAXPATHLEN ;
 int SEP ;
 int closedir (void*) ;
 scalar_t__ errno ;
 scalar_t__ g_Ctoc (scalar_t__*,char*,int) ;
 void* g_opendir (scalar_t__*,TYPE_1__*) ;
 int glob2 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,TYPE_1__*,struct glob_lim*) ;
 int match (scalar_t__*,scalar_t__*,scalar_t__*,int ) ;
 scalar_t__ readdir ;
 scalar_t__ stub1 (char*,scalar_t__) ;
 struct dirent* stub2 (void*) ;
 int stub3 (void*) ;

__attribute__((used)) static int
glob3(Char *pathbuf, Char *pathbuf_last, Char *pathend, Char *pathend_last,
    Char *pattern, Char *restpattern, Char *restpattern_last, glob_t *pglob,
    struct glob_lim *limitp)
{
 struct dirent *dp;
 DIR *dirp;
 int err;
 char buf[MAXPATHLEN];







 struct dirent *(*readdirfunc)(void *);

 if (pathend > pathend_last)
  return (1);
 *pathend = EOS;
 errno = 0;

 if ((dirp = g_opendir(pathbuf, pglob)) == ((void*)0)) {

  if (pglob->gl_errfunc) {
   if (g_Ctoc(pathbuf, buf, sizeof(buf)))
    return(GLOB_ABORTED);
   if (pglob->gl_errfunc(buf, errno) ||
       pglob->gl_flags & GLOB_ERR)
    return(GLOB_ABORTED);
  }
  return(0);
 }

 err = 0;


 if (pglob->gl_flags & GLOB_ALTDIRFUNC)
  readdirfunc = pglob->gl_readdir;
 else
  readdirfunc = (struct dirent *(*)(void *))readdir;
 while ((dp = (*readdirfunc)(dirp))) {
  u_char *sc;
  Char *dc;

  if ((pglob->gl_flags & GLOB_LIMIT) &&
      limitp->glim_readdir++ >= GLOB_LIMIT_READDIR) {
   errno = 0;
   *pathend++ = SEP;
   *pathend = EOS;
   err = GLOB_NOSPACE;
   break;
  }


  if (dp->d_name[0] == DOT && *pattern != DOT)
   continue;
  dc = pathend;
  sc = (u_char *) dp->d_name;
  while (dc < pathend_last && (*dc++ = *sc++) != EOS)
   ;
  if (dc >= pathend_last) {
   *dc = EOS;
   err = 1;
   break;
  }

  if (!match(pathend, pattern, restpattern, GLOB_LIMIT_RECUR)) {
   *pathend = EOS;
   continue;
  }
  err = glob2(pathbuf, pathbuf_last, --dc, pathend_last,
      restpattern, restpattern_last, pglob, limitp);
  if (err)
   break;
 }

 if (pglob->gl_flags & GLOB_ALTDIRFUNC)
  (*pglob->gl_closedir)(dirp);
 else
  closedir(dirp);
 return(err);
}
