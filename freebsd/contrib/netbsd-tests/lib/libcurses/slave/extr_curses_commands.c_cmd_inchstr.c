
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;


 int check_arg_count (int,int ) ;
 int inchstr (int *) ;
 int report_count (int) ;
 int report_nstr (int *) ;
 int report_return (int ) ;

void
cmd_inchstr(int nargs, char **args)
{
 chtype string[256];

 if (check_arg_count(nargs, 0) == 1)
  return;


 report_count(2);
 report_return(inchstr(string));
 report_nstr(string);
}
