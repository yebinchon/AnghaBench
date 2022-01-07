
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* FALSE ;
 int TRUE ;
 int init_logging (char const*,int ,void*) ;
 void* msyslog_include_timestamp ;
 int msyslog_term ;
 void* msyslog_term_pid ;

void
sntp_init_logging(
 const char *prog
 )
{

 msyslog_term = TRUE;
 init_logging(prog, 0, FALSE);
 msyslog_term_pid = FALSE;
 msyslog_include_timestamp = FALSE;
}
