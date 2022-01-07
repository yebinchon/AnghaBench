
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int iflags; } ;
struct TYPE_10__ {int * cargv; int * argv; } ;
typedef TYPE_1__ SCR ;
typedef int FREF ;
typedef TYPE_2__ EXCMD ;


 int E_C_FORCE ;
 scalar_t__ FL_ISSET (int ,int ) ;
 int FS_ALL ;
 int FS_FORCE ;
 int FS_POSSIBLE ;
 int FS_SETALT ;
 int F_SET (TYPE_1__*,int) ;
 int M_ERR ;
 int SC_FSWITCH ;
 int SC_STATUS_CNT ;
 int * file_add (TYPE_1__*,int ) ;
 scalar_t__ file_init (TYPE_1__*,int *,int *,int) ;
 scalar_t__ file_m1 (TYPE_1__*,scalar_t__,int) ;
 int msgq (TYPE_1__*,int ,char*) ;

int
ex_rew(SCR *sp, EXCMD *cmdp)
{
 FREF *frp;





 if (sp->argv == ((void*)0)) {
  msgq(sp, M_ERR, "113|No previous files to rewind");
  return (1);
 }

 if (file_m1(sp,
     FL_ISSET(cmdp->iflags, E_C_FORCE), FS_ALL | FS_POSSIBLE))
  return (1);


 sp->cargv = sp->argv;
 if ((frp = file_add(sp, *sp->cargv)) == ((void*)0))
  return (1);
 if (file_init(sp, frp, ((void*)0), FS_SETALT |
     (FL_ISSET(cmdp->iflags, E_C_FORCE) ? FS_FORCE : 0)))
  return (1);


 F_SET(sp, SC_FSWITCH | SC_STATUS_CNT);

 return (0);
}
