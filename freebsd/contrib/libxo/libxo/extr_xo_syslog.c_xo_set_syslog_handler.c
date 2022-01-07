
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_syslog_send_t ;
typedef int xo_syslog_open_t ;
typedef int xo_syslog_close_t ;


 int xo_syslog_close ;
 int xo_syslog_open ;
 int xo_syslog_send ;

void
xo_set_syslog_handler (xo_syslog_open_t open_func,
         xo_syslog_send_t send_func,
         xo_syslog_close_t close_func)
{
    xo_syslog_open = open_func;
    xo_syslog_send = send_func;
    xo_syslog_close = close_func;
}
