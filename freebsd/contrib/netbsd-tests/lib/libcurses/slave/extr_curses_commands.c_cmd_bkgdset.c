
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;


 int OK ;
 int bkgdset (int ) ;
 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_return (int ) ;

void
cmd_bkgdset(int nargs, char **args)
{
 chtype *ch;

 if (check_arg_count(nargs, 1) == 1)
  return;

 ch = (chtype *) args[0];
 bkgdset(ch[0]);
 report_count(1);
 report_return(OK);
}
