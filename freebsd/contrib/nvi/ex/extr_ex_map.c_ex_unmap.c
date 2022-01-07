
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__** argv; int iflags; } ;
struct TYPE_4__ {int bp; int len; } ;
typedef int SCR ;
typedef TYPE_2__ EXCMD ;


 int E_C_FORCE ;
 scalar_t__ FL_ISSET (int ,int ) ;
 int M_INFO ;
 int SEQ_COMMAND ;
 int SEQ_INPUT ;
 int msgq_wstr (int *,int ,int ,char*) ;
 scalar_t__ seq_delete (int *,int ,int ,int ) ;

int
ex_unmap(SCR *sp, EXCMD *cmdp)
{
 if (seq_delete(sp, cmdp->argv[0]->bp, cmdp->argv[0]->len,
     FL_ISSET(cmdp->iflags, E_C_FORCE) ? SEQ_INPUT : SEQ_COMMAND)) {
  msgq_wstr(sp, M_INFO,
      cmdp->argv[0]->bp, "135|\"%s\" isn't currently mapped");
  return (1);
 }
 return (0);
}
