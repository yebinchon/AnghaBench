
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_7__ {int coff; int roff; } ;
typedef TYPE_1__ SCR ;


 int * CLSP (TYPE_1__*) ;
 scalar_t__ ERR ;
 int M_ERR ;
 int RCNO (TYPE_1__*,size_t) ;
 int RLNO (TYPE_1__*,size_t) ;
 int msgq (TYPE_1__*,int ,char*,size_t,int ,size_t,int ) ;
 int * stdscr ;
 scalar_t__ wmove (int *,int ,int ) ;

int
cl_move(SCR *sp, size_t lno, size_t cno)
{
 WINDOW *win;
 win = CLSP(sp) ? CLSP(sp) : stdscr;

 if (wmove(win, RLNO(sp, lno), RCNO(sp, cno)) == ERR) {
  msgq(sp, M_ERR, "Error: move: l(%zu + %zu) c(%zu + %zu)",
      lno, sp->roff, cno, sp->coff);
  return (1);
 }
 return (0);
}
