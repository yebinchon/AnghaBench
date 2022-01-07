
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_arg_count (int,int) ;
 int pair_content (short,short*,short*) ;
 int report_count (int) ;
 int report_error (char*) ;
 int report_int (short) ;
 int report_return (int ) ;
 scalar_t__ sscanf (char*,char*,short*) ;

void
cmd_pair_content(int nargs, char **args)
{
 short pair, fore, back;

 if (check_arg_count(nargs, 1) == 1)
  return;

 if (sscanf(args[0], "%hd", &pair) == 0) {
  report_count(1);
  report_error("BAD ARGUMENT");
  return;
 }


 report_count(3);
 report_return(pair_content(pair, &fore, &back));
 report_int(fore);
 report_int(back);
}
