
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int) ;
 int define_key (char*,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_define_key(int nargs, char **args)
{
 int symbol;

 if (check_arg_count(nargs, 2) == 1)
  return;

 if (sscanf(args[1], "%d", &symbol) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 report_count(1);
 report_return(define_key(args[0], symbol));
}
