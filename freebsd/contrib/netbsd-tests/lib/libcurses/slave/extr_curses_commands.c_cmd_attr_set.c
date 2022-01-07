
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int attr_set (int,short,int *) ;
 int check_arg_count (int,int) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,...) ;

void
cmd_attr_set(int nargs, char **args)
{
 int attrib;
 short pair;

 if (check_arg_count(nargs, 2) == 1)
  return;

 if (sscanf(args[0], "%d", &attrib) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 if (sscanf(args[1], "%hd", &pair) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }

 report_count(1);
 report_return(attr_set(attrib, pair, ((void*)0)));
}
