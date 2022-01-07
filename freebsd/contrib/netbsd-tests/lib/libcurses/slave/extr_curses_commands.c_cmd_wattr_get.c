
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_int (short) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int **) ;
 int wattr_get (int *,int*,short*,int *) ;

void
cmd_wattr_get(int nargs, char **args)
{
 WINDOW *win;
 int attr;
 short pair;

 if (check_arg_count(nargs, 1) == 1)
  return;

 if (sscanf(args[0], "%p", &win) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }


 report_count(3);
 report_return(wattr_get(win, &attr, &pair, ((void*)0)));
 report_int(attr);
 report_int(pair);
}
