
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int) ;
 int printw (char*,char*) ;
 int report_count (int) ;
 int report_return (int ) ;

void
cmd_printw(int nargs, char **args)
{
 if (check_arg_count(nargs, 2) == 1)
  return;


 report_count(1);
 report_return(printw(args[0], args[1]));
}
