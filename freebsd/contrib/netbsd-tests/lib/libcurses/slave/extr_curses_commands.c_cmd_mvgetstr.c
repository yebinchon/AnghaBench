
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int) ;
 int mvgetstr (int,int,char*) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 int report_status (char*) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_mvgetstr(int nargs, char **args)
{
 int y, x;
 char string[256];

 if (check_arg_count(nargs, 2) == 1)
  return;

 if (sscanf(args[0], "%d", &y) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%d", &x) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }


 report_count(2);
 report_return(mvgetstr(y, x, string));
 report_status(string);
}
