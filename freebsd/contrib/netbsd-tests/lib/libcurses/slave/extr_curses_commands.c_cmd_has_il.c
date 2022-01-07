
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int ) ;
 int has_il () ;
 int report_count (int) ;
 int report_int (int ) ;

void
cmd_has_il(int nargs, char **args)
{
 if (check_arg_count(nargs, 0) == 1)
  return;

 report_count(1);
 report_int(has_il());
}
