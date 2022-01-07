
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct glob_lim {int dummy; } ;
typedef int glob_t ;
typedef scalar_t__ Char ;


 scalar_t__ const EOS ;
 scalar_t__ const LBRACE ;
 scalar_t__ const RBRACE ;
 scalar_t__ g_strchr (scalar_t__ const*,scalar_t__ const) ;
 int glob0 (scalar_t__ const*,int *,struct glob_lim*) ;
 int globexp2 (scalar_t__ const*,scalar_t__ const*,int *,struct glob_lim*) ;

__attribute__((used)) static int
globexp1(const Char *pattern, glob_t *pglob, struct glob_lim *limitp)
{
 const Char* ptr = pattern;


 if (pattern[0] == LBRACE && pattern[1] == RBRACE && pattern[2] == EOS)
  return glob0(pattern, pglob, limitp);

 if ((ptr = (const Char *) g_strchr(ptr, LBRACE)) != ((void*)0))
  return globexp2(ptr, pattern, pglob, limitp);

 return glob0(pattern, pglob, limitp);
}
