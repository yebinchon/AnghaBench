
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int **) ;
 int wrefresh (int *) ;

void
cmd_wrefresh(int nargs, char **args)
{
 WINDOW *win;

 if (check_arg_count(nargs, 1) == 1)
  return;

 if (sscanf(args[0], "%p", &win) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }


 report_count(1);
 report_return(wrefresh(win));
}
