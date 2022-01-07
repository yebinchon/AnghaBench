
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ti_te; } ;
typedef int GS ;
typedef TYPE_1__ CL_PRIVATE ;


 int CL_IN_EX ;
 int FALSE ;
 int F_ISSET (TYPE_1__*,int ) ;
 TYPE_1__* GCLP (int *) ;
 scalar_t__ LINES ;
 int TE_SENT ;
 int cl_freecap (TYPE_1__*) ;
 int deleteln () ;
 int delscreen (int ) ;
 int endwin () ;
 int keypad (int ,int ) ;
 int move (scalar_t__,int ) ;
 int refresh () ;
 int set_term (int *) ;
 int stdscr ;

__attribute__((used)) static int
cl_vi_end(GS *gp)
{
 CL_PRIVATE *clp;

 clp = GCLP(gp);


 (void)keypad(stdscr, FALSE);
 if (!F_ISSET(clp, CL_IN_EX)) {
  (void)move(0, 0);
  (void)deleteln();
  (void)move(LINES - 1, 0);
  (void)refresh();
 }

 cl_freecap(clp);


 (void)endwin();


 delscreen(set_term(((void*)0)));






 clp->ti_te = TE_SENT;

 return (0);
}
