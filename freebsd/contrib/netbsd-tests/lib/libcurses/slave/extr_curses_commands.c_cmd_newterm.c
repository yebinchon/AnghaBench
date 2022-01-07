
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int check_arg_count (int,int) ;
 int * fopen (char*,char*) ;
 int newterm (char*,int *,int *) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_ptr (int ) ;

void
cmd_newterm(int nargs, char **args)
{
 FILE *in, *out;

 if (check_arg_count(nargs, 3) == 1)
  return;

 if ((in = fopen(args[1], "rw")) == ((void*)0)) {
  report_count(1);
  report_error("BAD FILE_ARGUMENT");
  return;
 }


 if ((out = fopen(args[2], "rw")) == ((void*)0)) {
  report_count(1);
  report_error("BAD FILE_ARGUMENT");
  return;
 }

 report_count(1);
 report_ptr(newterm(args[0], out, in));
}
