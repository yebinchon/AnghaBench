
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct winsize {size_t ws_row; size_t ws_col; } ;
typedef int SCR ;


 int M_SYSERR ;
 int O_COLUMNS ;
 int O_LINES ;
 size_t O_VAL (int *,int ) ;
 int STDERR_FILENO ;
 int TIOCGWINSZ ;
 char* getenv (char*) ;
 int ioctl (int ,int ,struct winsize*) ;
 int msgq (int *,int ,char*) ;
 size_t strtol (char*,int *,int) ;
 int tigetnum (char*) ;

int
cl_ssize(SCR *sp, int sigwinch, size_t *rowp, size_t *colp, int *changedp)
{
 struct winsize win;
 size_t col, row;
 int rval;
 char *p;


 if (changedp != ((void*)0))
  *changedp = 1;
 row = col = 0;
 if (ioctl(STDERR_FILENO, TIOCGWINSZ, &win) != -1) {
  row = win.ws_row;
  col = win.ws_col;
 }

 if (sigwinch) {





  if (row == 0 || col == 0) {
   if (changedp != ((void*)0))
    *changedp = 0;
   return (0);
  }
  if (sp != ((void*)0) &&
      row == O_VAL(sp, O_LINES) && col == O_VAL(sp, O_COLUMNS)) {
   if (changedp != ((void*)0))
    *changedp = 0;
   return (0);
  }

  if (rowp != ((void*)0))
   *rowp = row;
  if (colp != ((void*)0))
   *colp = col;
  return (0);
 }
 if (row == 0 || col == 0) {
  if ((p = getenv("TERM")) == ((void*)0))
   goto noterm;
  if (row == 0)
   if ((rval = tigetnum("lines")) < 0)
    msgq(sp, M_SYSERR, "tigetnum: lines");
   else
    row = rval;
  if (col == 0)
   if ((rval = tigetnum("cols")) < 0)
    msgq(sp, M_SYSERR, "tigetnum: cols");
   else
    col = rval;
 }


noterm: if (row == 0)
  row = 24;
 if (col == 0)
  col = 80;
 if ((p = getenv("LINES")) != ((void*)0))
  row = strtol(p, ((void*)0), 10);
 if ((p = getenv("COLUMNS")) != ((void*)0))
  col = strtol(p, ((void*)0), 10);

 if (rowp != ((void*)0))
  *rowp = row;
 if (colp != ((void*)0))
  *colp = col;
 return (0);
}
