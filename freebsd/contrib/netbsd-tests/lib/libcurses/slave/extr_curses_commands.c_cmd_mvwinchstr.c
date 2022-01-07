
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;
typedef int WINDOW ;


 int check_arg_count (int,int) ;
 int mvwinchstr (int *,int,int,int *) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_nstr (int *) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_mvwinchstr(int nargs, char **args)
{
 int y, x;
 chtype string[256];
 WINDOW *win;

 if (check_arg_count(nargs, 3) == 1)
  return;

 if (sscanf(args[0], "%p", &win) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%d", &y) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[2], "%d", &x) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }


 report_count(2);
 report_return(mvwinchstr(win, y, x, string));
 report_nstr(string);
}
