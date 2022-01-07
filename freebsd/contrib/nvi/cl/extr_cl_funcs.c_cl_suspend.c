
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct termios {int dummy; } ;
typedef int WINDOW ;
struct TYPE_15__ {TYPE_1__* frp; scalar_t__ killersig; struct termios orig; int * gp; } ;
struct TYPE_14__ {int * name; } ;
typedef TYPE_2__ SCR ;
typedef int GS ;
typedef TYPE_2__ CL_PRIVATE ;


 TYPE_2__* CLP (TYPE_2__*) ;
 int * CLSP (TYPE_2__*) ;
 int CL_SCR_EX_INIT ;
 int CL_SCR_VI_INIT ;
 int CL_SIGWINCH ;
 int CL_STDIN_TTY ;
 int FALSE ;
 int F_CLR (TYPE_2__*,int) ;
 scalar_t__ F_ISSET (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 size_t LINES ;
 int SC_EX ;
 int SIGTSTP ;
 int STDIN_FILENO ;
 int TCSADRAIN ;
 int TCSASOFT ;
 int TRUE ;
 int cl_refresh (TYPE_2__*,int) ;
 int cl_rename (TYPE_2__*,int *,int) ;
 scalar_t__ cl_ssize (TYPE_2__*,int,int *,int *,int*) ;
 int endwin () ;
 int getyx (int *,size_t,size_t) ;
 int keypad (int *,int ) ;
 int kill (int ,int ) ;
 int * stdscr ;
 int tcgetattr (int ,struct termios*) ;
 int tcsetattr (int ,int,struct termios*) ;
 int wmove (int *,size_t,size_t) ;
 int wrefresh (int *) ;

int
cl_suspend(SCR *sp, int *allowedp)
{
 struct termios t;
 CL_PRIVATE *clp;
 WINDOW *win;
 GS *gp;
 size_t y, x;
 int changed;

 gp = sp->gp;
 clp = CLP(sp);
 win = CLSP(sp) ? CLSP(sp) : stdscr;
 *allowedp = 1;
 if (F_ISSET(sp, SC_EX)) {

  if (F_ISSET(clp, CL_STDIN_TTY)) {
   (void)tcgetattr(STDIN_FILENO, &t);
   (void)tcsetattr(STDIN_FILENO,
       TCSASOFT | TCSADRAIN, &clp->orig);
  }


  (void)kill(0, SIGTSTP);




  if (F_ISSET(clp, CL_STDIN_TTY))
   (void)tcsetattr(STDIN_FILENO, TCSASOFT | TCSADRAIN, &t);
  return (0);
 }
 getyx(win, y, x);
 (void)wmove(win, LINES - 1, 0);
 (void)wrefresh(win);
 (void)tcgetattr(STDIN_FILENO, &t);


 (void)keypad(stdscr, FALSE);


 (void)cl_rename(sp, ((void*)0), 0);

 (void)endwin();
 (void)tcsetattr(STDIN_FILENO, TCSADRAIN | TCSASOFT, &clp->orig);


 (void)kill(0, SIGTSTP);
 if (clp->killersig) {
  F_CLR(clp, CL_SCR_EX_INIT | CL_SCR_VI_INIT);
  return (0);
 }


 wrefresh(win);
 if (F_ISSET(clp, CL_STDIN_TTY))
  (void)tcsetattr(STDIN_FILENO, TCSASOFT | TCSADRAIN, &t);


 (void)cl_rename(sp, sp->frp->name, 1);


 (void)keypad(stdscr, TRUE);


 (void)wmove(win, y, x);
 (void)cl_refresh(sp, 1);


 if (cl_ssize(sp, 1, ((void*)0), ((void*)0), &changed))
  return (1);
 if (changed)
  F_SET(CLP(sp), CL_SIGWINCH);

 return (0);
}
