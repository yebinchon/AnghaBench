
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int) ;
 int color_set (short,int *) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,short*) ;

void
cmd_color_set(int nargs, char **args)
{
 short colour_pair;

 if (check_arg_count(nargs, 2) == 1)
  return;

 if (sscanf(args[0], "%hd", &colour_pair) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 report_count(1);
 report_return(color_set(colour_pair, ((void*)0)));
}
