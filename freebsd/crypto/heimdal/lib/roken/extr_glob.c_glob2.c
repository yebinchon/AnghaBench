
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_7__ {int gl_flags; int gl_matchc; } ;
typedef TYPE_1__ glob_t ;
typedef scalar_t__ Char ;


 scalar_t__ CHAR_EOS ;
 scalar_t__ CHAR_SEP ;
 int GLOB_MARK ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ g_lstat (scalar_t__*,struct stat*,TYPE_1__*) ;
 scalar_t__ g_stat (scalar_t__*,struct stat*,TYPE_1__*) ;
 int glob3 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,TYPE_1__*,size_t*) ;
 int globextend (scalar_t__*,TYPE_1__*,size_t*) ;
 scalar_t__ ismeta (scalar_t__) ;

__attribute__((used)) static int
glob2(Char *pathbuf, Char *pathend, Char *pattern, glob_t *pglob,
      size_t *limit)
{
 struct stat sb;
 Char *p, *q;
 int anymeta;





 for (anymeta = 0;;) {
  if (*pattern == CHAR_EOS) {
   *pathend = CHAR_EOS;
   if (g_lstat(pathbuf, &sb, pglob))
    return(0);

   if (((pglob->gl_flags & GLOB_MARK) &&
       pathend[-1] != CHAR_SEP) && (S_ISDIR(sb.st_mode)
       || (S_ISLNK(sb.st_mode) &&
       (g_stat(pathbuf, &sb, pglob) == 0) &&
       S_ISDIR(sb.st_mode)))) {
    *pathend++ = CHAR_SEP;
    *pathend = CHAR_EOS;
   }
   ++pglob->gl_matchc;
   return(globextend(pathbuf, pglob, limit));
  }


  q = pathend;
  p = pattern;
  while (*p != CHAR_EOS && *p != CHAR_SEP) {
   if (ismeta(*p))
    anymeta = 1;
   *q++ = *p++;
  }

  if (!anymeta) {
   pathend = q;
   pattern = p;
   while (*pattern == CHAR_SEP)
    *pathend++ = *pattern++;
  } else
   return(glob3(pathbuf, pathend, pattern, p, pglob,
       limit));
 }

}
