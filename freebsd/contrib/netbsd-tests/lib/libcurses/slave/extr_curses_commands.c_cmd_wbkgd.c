
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;
typedef int WINDOW ;


 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int **) ;
 int wbkgd (int *,int ) ;

void
cmd_wbkgd(int nargs, char **args)
{
 WINDOW *win;
 chtype *ch;

 if (check_arg_count(nargs, 2) == 1)
  return;

 if (sscanf(args[0], "%p", &win) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 ch = (chtype *) args[1];
 report_count(1);
 report_return(wbkgd(win, ch[0]));
}
