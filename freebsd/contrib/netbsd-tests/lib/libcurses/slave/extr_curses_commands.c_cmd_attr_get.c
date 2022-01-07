
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef short attr_t ;


 int attr_get (short*,short*,int *) ;
 int check_arg_count (int,int ) ;
 int report_count (int) ;
 int report_int (short) ;
 int report_return (int) ;

void
cmd_attr_get(int nargs, char **args)
{
 attr_t attrs;
 short colours;
 int retval;

 if (check_arg_count(nargs, 0) == 1)
  return;

 retval = attr_get(&attrs, &colours, ((void*)0));


 report_count(3);
 report_return(retval);
 report_int(attrs);
 report_int(colours);
}
