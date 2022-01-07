
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int) ;
 int chgat (int,int,int,int *) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_chgat(int nargs, char **args)
{
 int n, attr, colour;

 if (check_arg_count(nargs, 4) == 1)
  return;

 if (sscanf(args[0], "%d", &n) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%d", &attr) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[2], "%d", &colour) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }


 report_count(1);
 report_return(chgat(n, attr, colour, ((void*)0)));
}
