
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;
typedef int FILE ;


 int check_arg_count (int,int) ;
 int * fopen (char*,char*) ;
 int putwin (int *,int *) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int **) ;

void
cmd_putwin(int nargs, char **args)
{
 FILE *fp;
 WINDOW *win;

 if (check_arg_count(nargs, 2) == 1)
  return;

 if (sscanf(args[0], "%p", &win) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if ((fp = fopen(args[1], "rw")) == ((void*)0)) {
  report_count(1);
  report_error("BAD FILE_ARGUMENT");
  return;
 }

 report_count(1);
 report_return(putwin(win, fp));
}
