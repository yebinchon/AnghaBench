
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OK ;
 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int*) ;
 int timeout (int) ;

void
cmd_timeout(int nargs, char **args)
{
 int tval;

 if (check_arg_count(nargs, 1) == 1)
  return;

 if (sscanf(args[0], "%d", &tval) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 timeout(tval);
 report_count(1);
 report_return(OK);
}
