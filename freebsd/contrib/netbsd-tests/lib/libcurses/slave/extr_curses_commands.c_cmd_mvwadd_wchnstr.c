
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;

void
cmd_mvwadd_wchnstr(int nargs, char **args)
{
 if (check_arg_count(nargs, 1) == 1)
  return;

 report_count(1);
 report_error("UNSUPPORTED");
}
