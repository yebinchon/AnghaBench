
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int) ;
 int free (char*) ;
 int getnstr (char*,int) ;
 char* malloc (int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 int report_status (char*) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_getnstr(int nargs, char **args)
{
 int limit;
 char *string;

 if (check_arg_count(nargs, 1) == 1)
  return;

 if (sscanf(args[0], "%d", &limit) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if ((string = malloc(limit + 1)) == ((void*)0)) {
  report_count(1);
  report_error("MALLOC_FAILED");
  return;
 }


 report_count(2);
 report_return(getnstr(string, limit));
 report_status(string);
 free(string);
}
