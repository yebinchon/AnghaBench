
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int ) ;
 int report_count (int) ;
 int report_return (int ) ;
 int report_status (char*) ;
 int scanw (char*,char*) ;

void
cmd_scanw(int nargs, char **args)
{
 char string[256];

 if (check_arg_count(nargs, 0) == 1)
  return;


 report_count(2);
 report_return(scanw("%s", string));
 report_status(string);
}
