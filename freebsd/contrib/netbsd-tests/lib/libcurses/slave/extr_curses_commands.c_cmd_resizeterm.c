
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 int resizeterm (int,int) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_resizeterm(int nargs, char **args)
{
 int rows, cols;

 if (check_arg_count(nargs, 2) == 1)
  return;

 if (sscanf(args[0], "%d", &rows) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%d", &cols) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 report_count(1);
 report_return(resizeterm(rows, cols));
}
