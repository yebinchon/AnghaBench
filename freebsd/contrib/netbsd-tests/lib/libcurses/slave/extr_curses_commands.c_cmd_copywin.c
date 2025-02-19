
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int check_arg_count (int,int) ;
 int copywin (int *,int *,int,int,int,int,int,int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_copywin(int nargs, char **args)
{
 int sminrow, smincol, dminrow, dmincol, dmaxrow, dmaxcol, ovlay;
 WINDOW *source, *destination;

 if (check_arg_count(nargs, 9) == 1)
  return;

 if (sscanf(args[0], "%p", &source) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%p", &destination) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[2], "%d", &sminrow) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[3], "%d", &smincol) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[4], "%d", &dminrow) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[5], "%d", &dmincol) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[6], "%d", &dmaxrow) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[7], "%d", &dmaxcol) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[8], "%d", &ovlay) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 report_count(1);
 report_return(copywin(source, destination, sminrow, smincol, dminrow,
         dmincol, dmaxrow, dmaxcol, ovlay));
}
