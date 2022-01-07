
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;


 int addchnstr (int *,int) ;
 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_addchnstr(int nargs, char **args)
{
 int count;

 if (check_arg_count(nargs, 2) == 1)
  return;

 if (sscanf(args[1], "%d", &count) == 0) {
  report_count(1);
 report_error("BAD ARGUMENT");
  return;
 }

 report_count(1);
 report_return(addchnstr((chtype *) args[0], count));
}
