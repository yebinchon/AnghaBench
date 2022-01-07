
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;
typedef int WINDOW ;


 int check_arg_count (int,int) ;
 int free (int *) ;
 int * malloc (int) ;
 int mvwinchnstr (int *,int,int,int *,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_nstr (int *) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_mvwinchnstr(int nargs, char **args)
{
 int y, x, count;
 chtype *string;
 WINDOW *win;

 if (check_arg_count(nargs, 4) == 1)
  return;

 if (sscanf(args[0], "%p", &win) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%d", &y) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[2], "%d", &x) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[3], "%d", &count) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if ((string = malloc((count + 1) * sizeof(chtype))) == ((void*)0)) {
  report_count(1);
  report_error("MALLOC_FAILED");
  return;
 }


 report_count(2);
 report_return(mvwinchnstr(win, y, x, string, count));
 report_nstr(string);
 free(string);
}
