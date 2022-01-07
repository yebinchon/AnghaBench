
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct glob_limit {int dummy; } ;
struct TYPE_4__ {int gl_flags; } ;
typedef TYPE_1__ glob11_t ;


 int GLOB_MAGCHAR ;
 int GLOB_NOCHECK ;
 int GLOB_NOMAGIC ;
 int GLOB_NOMATCH ;
 int globextend (int *,TYPE_1__*,struct glob_limit*,char const*) ;

__attribute__((used)) static int
err_nomatch(glob11_t *pglob, struct glob_limit *limit, const char *origpat) {






 if ((pglob->gl_flags & GLOB_NOCHECK) ||
     ((pglob->gl_flags & GLOB_NOMAGIC) &&
     !(pglob->gl_flags & GLOB_MAGCHAR)))
  return (globextend(((void*)0), pglob, limit, origpat));
 return (GLOB_NOMATCH);
}
