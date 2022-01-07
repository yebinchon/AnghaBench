
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_char ;
struct dirent {scalar_t__* d_name; } ;
struct TYPE_5__ {int gl_flags; int (* gl_closedir ) (void*) ;struct dirent* (* gl_readdir ) (void*) ;scalar_t__ (* gl_errfunc ) (char*,scalar_t__) ;} ;
typedef TYPE_1__ glob_t ;
typedef void DIR ;
typedef scalar_t__ Char ;


 scalar_t__ CHAR_DOT ;
 scalar_t__ CHAR_EOS ;
 int GLOB_ABEND ;
 int GLOB_ALTDIRFUNC ;
 int GLOB_ERR ;
 int MaxPathLen ;
 int closedir (void*) ;
 scalar_t__ errno ;
 int g_Ctoc (scalar_t__*,char*) ;
 void* g_opendir (scalar_t__*,TYPE_1__*) ;
 int glob2 (scalar_t__*,scalar_t__*,scalar_t__*,TYPE_1__*,size_t*) ;
 int match (scalar_t__*,scalar_t__*,scalar_t__*) ;
 scalar_t__ readdir ;
 scalar_t__ stub1 (char*,scalar_t__) ;
 struct dirent* stub2 (void*) ;
 int stub3 (void*) ;

__attribute__((used)) static int
glob3(Char *pathbuf, Char *pathend, Char *pattern, Char *restpattern,
      glob_t *pglob, size_t *limit)
{
 struct dirent *dp;
 DIR *dirp;
 int err;
 char buf[MaxPathLen];







 struct dirent *(*readdirfunc)(void *);

 *pathend = CHAR_EOS;
 errno = 0;

 if ((dirp = g_opendir(pathbuf, pglob)) == ((void*)0)) {

  if (pglob->gl_errfunc) {
   g_Ctoc(pathbuf, buf);
   if (pglob->gl_errfunc(buf, errno) ||
       pglob->gl_flags & GLOB_ERR)
    return (GLOB_ABEND);
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


  if (dp->d_name[0] == CHAR_DOT && *pattern != CHAR_DOT)
   continue;
  for (sc = (u_char *) dp->d_name, dc = pathend;
       (*dc++ = *sc++) != CHAR_EOS;)
   continue;
  if (!match(pathend, pattern, restpattern)) {
   *pathend = CHAR_EOS;
   continue;
  }
  err = glob2(pathbuf, --dc, restpattern, pglob, limit);
  if (err)
   break;
 }

 if (pglob->gl_flags & GLOB_ALTDIRFUNC)
  (*pglob->gl_closedir)(dirp);
 else
  closedir(dirp);
 return(err);
}
