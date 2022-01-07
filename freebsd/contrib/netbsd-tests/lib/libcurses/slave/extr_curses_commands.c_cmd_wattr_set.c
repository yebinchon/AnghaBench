
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,...) ;
 int wattr_set (int *,int,short,int *) ;

void
cmd_wattr_set(int nargs, char **args)
{
 WINDOW *win;
 int attr;
 short pair;

 if (check_arg_count(nargs, 3) == 1)
  return;

 if (sscanf(args[0], "%p", &win) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%d", &attr) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[2], "%hd", &pair) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 report_count(1);
 report_return(wattr_set(win, attr, pair, ((void*)0)));
}
