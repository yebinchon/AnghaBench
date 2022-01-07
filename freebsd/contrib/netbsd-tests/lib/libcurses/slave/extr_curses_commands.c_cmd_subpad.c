
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_ptr (int ) ;
 scalar_t__ sscanf (char*,char*,int*) ;
 int subpad (int *,int,int,int,int) ;

void
cmd_subpad(int nargs, char **args)
{
 WINDOW *pad;
 int lines, cols, begin_y, begin_x;

 if (check_arg_count(nargs, 5) == 1)
  return;

 if (sscanf(args[0], "%p", &pad) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%d", &lines) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[2], "%d", &cols) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[3], "%d", &begin_y) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[4], "%d", &begin_x) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 report_count(1);
 report_ptr(subpad(pad, lines, cols, begin_y, begin_x));
}
