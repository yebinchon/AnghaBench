
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 int setscrreg (int,int) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_setscrreg(int nargs, char **args)
{
 int top, bottom;

 if (check_arg_count(nargs, 2) == 1)
  return;

 if (sscanf(args[0], "%d", &top) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%d", &bottom) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 report_count(1);
 report_return(setscrreg(top, bottom));
}
