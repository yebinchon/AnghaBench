
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WINDOW ;


 int check_arg_count (int,int) ;
 int prefresh (int *,int,int,int,int,int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,int*) ;

void
cmd_prefresh(int nargs, char **args)
{
 int pbeg_y, pbeg_x, sbeg_y, sbeg_x, smax_y, smax_x;
 WINDOW *pad;

 if (check_arg_count(nargs, 7) == 1)
  return;

 if (sscanf(args[0], "%p", &pad) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%d", &pbeg_y) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[2], "%d", &pbeg_x) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[3], "%d", &sbeg_y) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[4], "%d", &sbeg_x) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[5], "%d", &smax_y) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[6], "%d", &smax_x) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }


 report_count(1);
 report_return(prefresh(pad, pbeg_y, pbeg_x, sbeg_y, sbeg_x, smax_y,
          smax_x));

}
