
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;
typedef int WINDOW ;


 int box (int *,int ,int ) ;
 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int **) ;

void
cmd_box(int nargs, char **args)
{
 WINDOW *win;
 chtype *vertical, *horizontal;

 if (check_arg_count(nargs, 3) == 1)
  return;

 if (sscanf(args[0], "%p", &win) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 vertical = (chtype *) args[1];
 horizontal = (chtype *) args[2];
 report_count(1);
 report_return(box(win, vertical[0], horizontal[0]));
}
