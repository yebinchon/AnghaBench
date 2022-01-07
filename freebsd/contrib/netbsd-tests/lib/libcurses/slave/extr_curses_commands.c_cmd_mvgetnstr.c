
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int) ;
 int free (char*) ;
 char* malloc (int) ;
 int mvgetnstr (int,int,char*,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 int report_status (char*) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_mvgetnstr(int nargs, char **args)
{
 int y, x, count;
 char *string;

 if (check_arg_count(nargs, 3) == 1)
  return;

 if (sscanf(args[0], "%d", &y) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%d", &x) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[2], "%d", &count) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if ((string = malloc(count + 1)) == ((void*)0)) {
  report_count(1);
  report_error("MALLOC_FAILED");
  return;
 }


 report_count(2);
 report_return(mvgetnstr(y, x, string, count));
 report_status(string);
 free(string);
}
