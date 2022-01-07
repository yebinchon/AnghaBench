
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int chtype ;


 int check_arg_count (int,int) ;
 int free (int *) ;
 int inchnstr (int *,int) ;
 int * malloc (int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_nstr (int *) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_inchnstr(int nargs, char **args)
{
 int limit;
 chtype *string;

 if (check_arg_count(nargs, 1) == 1)
  return;

 if (sscanf(args[0], "%d", &limit) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if ((string = malloc((limit + 1) * sizeof(chtype))) == ((void*)0)) {
  report_count(1);
  report_error("MALLOC_FAILED");
  return;
 }


 report_count(2);
 report_return(inchnstr(string, limit));
 report_nstr(string);
 free(string);
}
