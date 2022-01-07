
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int glob_t ;
typedef scalar_t__ Char ;


 scalar_t__ const CHAR_EOS ;
 scalar_t__ const CHAR_LBRACE ;
 scalar_t__ const CHAR_RBRACE ;
 scalar_t__ g_strchr (scalar_t__ const*,scalar_t__ const) ;
 int glob0 (scalar_t__ const*,int *) ;
 int globexp2 (scalar_t__ const*,scalar_t__ const*,int *,int*) ;

__attribute__((used)) static int globexp1(const Char *pattern, glob_t *pglob)
{
 const Char* ptr = pattern;
 int rv;


 if (pattern[0] == CHAR_LBRACE && pattern[1] == CHAR_RBRACE && pattern[2] == CHAR_EOS)
  return glob0(pattern, pglob);

 while ((ptr = (const Char *) g_strchr(ptr, CHAR_LBRACE)) != ((void*)0))
  if (!globexp2(ptr, pattern, pglob, &rv))
   return rv;

 return glob0(pattern, pglob);
}
