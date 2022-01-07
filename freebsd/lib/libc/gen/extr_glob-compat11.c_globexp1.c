
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct glob_limit {int l_brace_cnt; } ;
struct TYPE_5__ {int gl_flags; } ;
typedef TYPE_1__ glob11_t ;
typedef int Char ;


 int E2BIG ;
 int GLOB_LIMIT ;
 scalar_t__ GLOB_LIMIT_BRACE ;
 int GLOB_NOSPACE ;
 int LBRACE ;
 int errno ;
 int * g_strchr (int const*,int ) ;
 int glob0 (int const*,TYPE_1__*,struct glob_limit*,int *) ;
 int globexp2 (int const*,int const*,TYPE_1__*,struct glob_limit*) ;

__attribute__((used)) static int
globexp1(const Char *pattern, glob11_t *pglob, struct glob_limit *limit)
{
 const Char* ptr;

 if ((ptr = g_strchr(pattern, LBRACE)) != ((void*)0)) {
  if ((pglob->gl_flags & GLOB_LIMIT) &&
      limit->l_brace_cnt++ >= GLOB_LIMIT_BRACE) {
   errno = E2BIG;
   return (GLOB_NOSPACE);
  }
  return (globexp2(ptr, pattern, pglob, limit));
 }

 return (glob0(pattern, pglob, limit, ((void*)0)));
}
