
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int check_arg_count (int,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int getwin (int *) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_ptr (int ) ;

void
cmd_getwin(int nargs, char **args)
{
 FILE *fp;

 if (check_arg_count(nargs, 1) == 1)
  return;

 if ((fp = fopen(args[0], "r")) == ((void*)0)) {
  report_count(1);
  report_error("BAD FILE_ARGUMENT");
  return;
 }

 report_count(1);
 report_ptr(getwin(fp));
 fclose(fp);
}
