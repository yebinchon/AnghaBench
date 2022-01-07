
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SCREEN ;


 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_ptr (int ) ;
 int set_term (int *) ;
 scalar_t__ sscanf (char*,char*,int **) ;

void
cmd_set_term(int nargs, char **args)
{
 SCREEN *scrn;

 if (check_arg_count(nargs, 1) == 1)
  return;

 if (sscanf(args[0], "%p", &scrn) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 report_count(1);
 report_ptr(set_term(scrn));
}
