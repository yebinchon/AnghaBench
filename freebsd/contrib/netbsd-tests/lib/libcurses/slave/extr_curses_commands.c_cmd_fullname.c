
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int) ;
 char* fullname (char*,char*) ;
 int report_count (int) ;
 int report_status (char*) ;

void
cmd_fullname(int nargs, char **args)
{
 char string[256];

 if (check_arg_count(nargs, 1) == 1)
  return;


 report_count(2);
 report_status(fullname(args[0], string));
 report_status(string);
}
