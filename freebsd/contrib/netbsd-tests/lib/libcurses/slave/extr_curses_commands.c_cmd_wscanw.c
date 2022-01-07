
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
 int wscanw (int *,char*,char**) ;

void
cmd_wscanw(int nargs, char **args)
{
 WINDOW *win;
 char string[256];

 if (check_arg_count(nargs, 2) == 1)
  return;

 if (sscanf(args[0], "%p", &win) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 report_count(1);
 report_return(wscanw(win, args[1], &string));
}
