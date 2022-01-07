
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ argc; } ;
typedef int SCR ;
typedef TYPE_1__ EXCMD ;


 int F_ISSET (int *,int ) ;
 int M_ERR ;
 int SC_VI ;
 scalar_t__ ex_edit (int *,TYPE_1__*) ;
 int msgq (int *,int ,char*) ;
 scalar_t__ sscr_init (int *) ;

int
ex_script(SCR *sp, EXCMD *cmdp)
{

 if (!F_ISSET(sp, SC_VI)) {
  msgq(sp, M_ERR,
      "150|The script command is only available in vi mode");
  return (1);
 }


 if (cmdp->argc != 0 && ex_edit(sp, cmdp))
  return (1);


 if (sscr_init(sp))
  return (1);

 return (0);
}
