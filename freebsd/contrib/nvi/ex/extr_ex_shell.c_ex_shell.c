
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {TYPE_2__* frp; TYPE_1__* gp; } ;
struct TYPE_14__ {int * name; } ;
struct TYPE_13__ {int (* scr_rename ) (TYPE_3__*,int *,int) ;} ;
typedef TYPE_3__ SCR ;
typedef int EXCMD ;


 int F_ISSET (TYPE_3__*,int ) ;
 int F_SET (TYPE_3__*,int ) ;
 int M_SYSERR ;
 int O_SHELL ;
 int O_STR (TYPE_3__*,int ) ;
 int SC_EX_WAIT_NO ;
 int SC_SCR_EXWROTE ;
 int asprintf (char**,char*,int ) ;
 int ex_exec_proc (TYPE_3__*,int *,char*,int *,int) ;
 int free (char*) ;
 int msgq (TYPE_3__*,int ,int *) ;
 scalar_t__ opts_empty (TYPE_3__*,int ,int ) ;
 int stub1 (TYPE_3__*,int *,int) ;
 int stub2 (TYPE_3__*,int *,int) ;

int
ex_shell(SCR *sp, EXCMD *cmdp)
{
 int rval;
 char *buf;


 if (opts_empty(sp, O_SHELL, 0))
  return (1);





 (void)asprintf(&buf, "%s -i", O_STR(sp, O_SHELL));
 if (buf == ((void*)0)) {
  msgq(sp, M_SYSERR, ((void*)0));
  return (1);
 }


 (void)sp->gp->scr_rename(sp, ((void*)0), 0);


 rval = ex_exec_proc(sp, cmdp, buf, ((void*)0), !F_ISSET(sp, SC_SCR_EXWROTE));
 free(buf);


 (void)sp->gp->scr_rename(sp, sp->frp->name, 1);






 F_SET(sp, SC_EX_WAIT_NO);

 return (rval);
}
