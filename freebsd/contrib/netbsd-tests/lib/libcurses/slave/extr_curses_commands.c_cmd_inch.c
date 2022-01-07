
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int ) ;
 int inch () ;
 int report_byte (int ) ;
 int report_count (int) ;

void
cmd_inch(int nargs, char **args)
{
 if (check_arg_count(nargs, 0) == 1)
  return;


 report_count(1);
 report_byte(inch());
}
