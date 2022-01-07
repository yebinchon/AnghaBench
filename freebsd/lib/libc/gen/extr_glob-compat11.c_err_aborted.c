
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int gl_flags; scalar_t__ (* gl_errfunc ) (char*,int) ;} ;
typedef TYPE_1__ glob11_t ;


 int GLOB_ABORTED ;
 int GLOB_ERR ;
 scalar_t__ stub1 (char*,int) ;

__attribute__((used)) static int
err_aborted(glob11_t *pglob, int err, char *buf) {
 if ((pglob->gl_errfunc != ((void*)0) && pglob->gl_errfunc(buf, err)) ||
     (pglob->gl_flags & GLOB_ERR))
  return (GLOB_ABORTED);
 return (0);
}
