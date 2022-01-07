
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glob_limit {int dummy; } ;
typedef int glob_t ;
typedef scalar_t__ Char ;


 scalar_t__ EOS ;
 int MAXPATHLEN ;
 int glob2 (scalar_t__*,scalar_t__*,scalar_t__*,scalar_t__*,int *,struct glob_limit*) ;

__attribute__((used)) static int
glob1(Char *pattern, glob_t *pglob, struct glob_limit *limit)
{
 Char pathbuf[MAXPATHLEN];


 if (*pattern == EOS)
  return (0);
 return (glob2(pathbuf, pathbuf, pathbuf + MAXPATHLEN - 1,
     pattern, pglob, limit));
}
