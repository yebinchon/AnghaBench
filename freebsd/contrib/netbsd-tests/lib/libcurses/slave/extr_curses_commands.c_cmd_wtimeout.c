
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int OK ;
 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int*) ;
 int wtimeout (int *,int) ;

void
cmd_wtimeout(int nargs, char **args)
{
 WINDOW *win;
 int tval;

 if (check_arg_count(nargs, 2) == 1)
  return;

 if (sscanf(args[0], "%p", &win) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%d", &tval) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 wtimeout(win, tval);
 report_count(1);
 report_return(OK);
}
