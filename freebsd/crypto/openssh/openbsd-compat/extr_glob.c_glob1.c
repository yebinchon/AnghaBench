
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glob_lim {int dummy; } ;
typedef int glob_t ;
typedef scalar_t__ Char ;


 scalar_t__ EOS ;
 int MAXPATHLEN ;
 int glob2 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int *,struct glob_lim*) ;

__attribute__((used)) static int
glob1(Char *pattern, Char *pattern_last, glob_t *pglob, struct glob_lim *limitp)
{
 Char pathbuf[MAXPATHLEN];


 if (*pattern == EOS)
  return(0);
 return(glob2(pathbuf, pathbuf+MAXPATHLEN-1,
     pathbuf, pathbuf+MAXPATHLEN-1,
     pattern, pattern_last, pglob, limitp));
}
