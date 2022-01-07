
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct glob_lim {int glim_stat; } ;
struct TYPE_7__ {int gl_flags; int gl_matchc; } ;
typedef TYPE_1__ glob_t ;
typedef scalar_t__ Char ;


 scalar_t__ EOS ;
 int GLOB_LIMIT ;
 scalar_t__ GLOB_LIMIT_STAT ;
 int GLOB_MARK ;
 int GLOB_NOSPACE ;
 scalar_t__ SEP ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ errno ;
 scalar_t__ g_lstat (scalar_t__*,struct stat*,TYPE_1__*) ;
 scalar_t__ g_stat (scalar_t__*,struct stat*,TYPE_1__*) ;
 int glob3 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,TYPE_1__*,struct glob_lim*) ;
 int globextend (scalar_t__*,TYPE_1__*,struct glob_lim*,struct stat*) ;
 scalar_t__ ismeta (scalar_t__) ;

__attribute__((used)) static int
glob2(Char *pathbuf, Char *pathbuf_last, Char *pathend, Char *pathend_last,
    Char *pattern, Char *pattern_last, glob_t *pglob, struct glob_lim *limitp)
{
 struct stat sb;
 Char *p, *q;
 int anymeta;





 for (anymeta = 0;;) {
  if (*pattern == EOS) {
   *pathend = EOS;
   if (g_lstat(pathbuf, &sb, pglob))
    return(0);

   if ((pglob->gl_flags & GLOB_LIMIT) &&
       limitp->glim_stat++ >= GLOB_LIMIT_STAT) {
    errno = 0;
    *pathend++ = SEP;
    *pathend = EOS;
    return(GLOB_NOSPACE);
   }

   if (((pglob->gl_flags & GLOB_MARK) &&
       pathend[-1] != SEP) && (S_ISDIR(sb.st_mode) ||
       (S_ISLNK(sb.st_mode) &&
       (g_stat(pathbuf, &sb, pglob) == 0) &&
       S_ISDIR(sb.st_mode)))) {
    if (pathend+1 > pathend_last)
     return (1);
    *pathend++ = SEP;
    *pathend = EOS;
   }
   ++pglob->gl_matchc;
   return(globextend(pathbuf, pglob, limitp, &sb));
  }


  q = pathend;
  p = pattern;
  while (*p != EOS && *p != SEP) {
   if (ismeta(*p))
    anymeta = 1;
   if (q+1 > pathend_last)
    return (1);
   *q++ = *p++;
  }

  if (!anymeta) {
   pathend = q;
   pattern = p;
   while (*pattern == SEP) {
    if (pathend+1 > pathend_last)
     return (1);
    *pathend++ = *pattern++;
   }
  } else

   return(glob3(pathbuf, pathbuf_last, pathend,
       pathend_last, pattern, p, pattern_last,
       pglob, limitp));
 }

}
