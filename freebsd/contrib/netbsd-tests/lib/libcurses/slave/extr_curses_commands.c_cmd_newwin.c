
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int) ;
 int newwin (int,int,int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_ptr (int ) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_newwin(int nargs, char **args)
{
 int lines, cols, begin_y, begin_x;

 if (check_arg_count(nargs, 4) == 1)
  return;

 if (sscanf(args[0], "%d", &lines) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%d", &cols) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[2], "%d", &begin_y) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[3], "%d", &begin_x) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 report_count(1);
 report_ptr(newwin(lines, cols, begin_y, begin_x));
}
