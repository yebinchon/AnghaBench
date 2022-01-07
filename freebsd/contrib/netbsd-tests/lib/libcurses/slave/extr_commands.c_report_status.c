
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int report_message (int ,char const*) ;
 int ret_string ;

void
report_status(const char *status)
{
 report_message(ret_string, status);
}
