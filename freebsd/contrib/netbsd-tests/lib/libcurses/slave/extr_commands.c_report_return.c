
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERR ;
 int OK ;
 int report_status (char*) ;
 int report_type (int ) ;
 int ret_err ;
 int ret_ok ;

void
report_return(int status)
{
 if (status == ERR)
  report_type(ret_err);
 else if (status == OK)
  report_type(ret_ok);
 else
  report_status("INVALID_RETURN");
}
