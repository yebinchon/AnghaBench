
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct glob_limit {int l_stat_cnt; } ;
struct freebsd11_stat {int st_mode; } ;
struct TYPE_7__ {int gl_flags; int gl_matchc; } ;
typedef TYPE_1__ glob11_t ;
typedef scalar_t__ Char ;


 int E2BIG ;
 scalar_t__ EOS ;
 int GLOB_LIMIT ;
 scalar_t__ GLOB_LIMIT_STAT ;
 int GLOB_MARK ;
 int GLOB_NOSPACE ;
 scalar_t__ SEP ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ UNPROT (scalar_t__) ;
 int errno ;
 scalar_t__ g_lstat (scalar_t__*,struct freebsd11_stat*,TYPE_1__*) ;
 scalar_t__ g_stat (scalar_t__*,struct freebsd11_stat*,TYPE_1__*) ;
 int glob3 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,TYPE_1__*,struct glob_limit*) ;
 int globextend (scalar_t__*,TYPE_1__*,struct glob_limit*,int *) ;
 scalar_t__ ismeta (scalar_t__) ;

__attribute__((used)) static int
glob2(Char *pathbuf, Char *pathend, Char *pathend_last, Char *pattern,
      glob11_t *pglob, struct glob_limit *limit)
{
 struct freebsd11_stat sb;
 Char *p, *q;
 int anymeta;





 for (anymeta = 0;;) {
  if (*pattern == EOS) {
   *pathend = EOS;
   if (g_lstat(pathbuf, &sb, pglob))
    return (0);

   if ((pglob->gl_flags & GLOB_LIMIT) &&
       limit->l_stat_cnt++ >= GLOB_LIMIT_STAT) {
    errno = E2BIG;
    return (GLOB_NOSPACE);
   }
   if ((pglob->gl_flags & GLOB_MARK) &&
       UNPROT(pathend[-1]) != SEP &&
       (S_ISDIR(sb.st_mode) ||
       (S_ISLNK(sb.st_mode) &&
       g_stat(pathbuf, &sb, pglob) == 0 &&
       S_ISDIR(sb.st_mode)))) {
    if (pathend + 1 > pathend_last) {
     errno = E2BIG;
     return (GLOB_NOSPACE);
    }
    *pathend++ = SEP;
    *pathend = EOS;
   }
   ++pglob->gl_matchc;
   return (globextend(pathbuf, pglob, limit, ((void*)0)));
  }


  q = pathend;
  p = pattern;
  while (*p != EOS && UNPROT(*p) != SEP) {
   if (ismeta(*p))
    anymeta = 1;
   if (q + 1 > pathend_last) {
    errno = E2BIG;
    return (GLOB_NOSPACE);
   }
   *q++ = *p++;
  }

  if (!anymeta) {
   pathend = q;
   pattern = p;
   while (UNPROT(*pattern) == SEP) {
    if (pathend + 1 > pathend_last) {
     errno = E2BIG;
     return (GLOB_NOSPACE);
    }
    *pathend++ = *pattern++;
   }
  } else
   return (glob3(pathbuf, pathend, pathend_last, pattern,
       p, pglob, limit));
 }

}
