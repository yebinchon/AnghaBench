
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int LOG_ERR ;
 int TRUE ;
 int change_logfile (char const*,int ) ;
 int msyslog (int ,char*,char const*) ;
 char const* syslog_fname ;

void
setup_logfile(
 const char * name
 )
{
 if (((void*)0) == syslog_fname && ((void*)0) != name) {
  if (-1 == change_logfile(name, TRUE))
   msyslog(LOG_ERR, "Cannot open log file %s, %m",
    name);
  return ;
 }
 if (((void*)0) == syslog_fname)
  return;

 if (-1 == change_logfile(syslog_fname, FALSE))
  msyslog(LOG_ERR, "Cannot reopen log file %s, %m",
   syslog_fname);
}
