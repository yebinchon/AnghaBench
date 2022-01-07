
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int report_count (int) ;
 int report_error (char*) ;

int
check_arg_count(int nargs, int expected)
{
 if (nargs != expected) {
  report_count(1);
  report_error("INCORRECT_ARGUMENT_NUMBER");
  return(1);
 }

 return(0);
}
