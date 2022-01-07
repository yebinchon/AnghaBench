
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct glob_limit {int l_brace_cnt; } ;
struct TYPE_6__ {int gl_flags; size_t gl_pathc; } ;
typedef TYPE_1__ glob_t ;
typedef scalar_t__ Char ;


 int E2BIG ;
 scalar_t__ const EOS ;
 int GLOB_LIMIT ;
 scalar_t__ GLOB_LIMIT_BRACE ;
 int GLOB_NOSPACE ;
 scalar_t__ const LBRACE ;
 scalar_t__ const RBRACE ;
 int errno ;
 int glob0 (scalar_t__ const*,TYPE_1__*,struct glob_limit*,char const*) ;
 int globexp1 (scalar_t__ const*,TYPE_1__*,struct glob_limit*) ;
 int globfinal (TYPE_1__*,struct glob_limit*,size_t,char const*) ;

__attribute__((used)) static int
globexp0(const Char *pattern, glob_t *pglob, struct glob_limit *limit,
    const char *origpat) {
 int rv;
 size_t oldpathc;


 if (pattern[0] == LBRACE && pattern[1] == RBRACE && pattern[2] == EOS) {
  if ((pglob->gl_flags & GLOB_LIMIT) &&
      limit->l_brace_cnt++ >= GLOB_LIMIT_BRACE) {
   errno = E2BIG;
   return (GLOB_NOSPACE);
  }
  return (glob0(pattern, pglob, limit, origpat));
 }

 oldpathc = pglob->gl_pathc;

 if ((rv = globexp1(pattern, pglob, limit)) != 0)
  return rv;

 return (globfinal(pglob, limit, oldpathc, origpat));
}
