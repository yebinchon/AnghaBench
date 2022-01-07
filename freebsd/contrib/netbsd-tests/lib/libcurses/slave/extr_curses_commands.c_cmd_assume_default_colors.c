
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assume_default_colors (short,short) ;
 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,short*) ;

void
cmd_assume_default_colors(int nargs, char **args)
{
 short fore, back;

 if (check_arg_count(nargs, 2) == 1)
  return;

 if (sscanf(args[0], "%hd", &fore) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%hd", &back) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 report_count(1);
 report_return(assume_default_colors(fore, back));
}
