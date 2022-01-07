
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int glob_t ;
typedef scalar_t__ Char ;


 scalar_t__ CHAR_EOS ;
 int MaxPathLen ;
 int glob2 (scalar_t__*,scalar_t__*,scalar_t__*,int *,size_t*) ;

__attribute__((used)) static int
glob1(Char *pattern, glob_t *pglob, size_t *limit)
{
 Char pathbuf[MaxPathLen+1];


 if (*pattern == CHAR_EOS)
  return(0);
 return(glob2(pathbuf, pathbuf, pattern, pglob, limit));
}
