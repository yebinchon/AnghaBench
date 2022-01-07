
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int LOG_NOTICE ;
 int LOG_WARNING ;




 int msyslog (int,char*,char const*) ;

void
sntp_libevent_log_cb(
 int severity,
 const char * msg
 )
{
 int level;

 switch (severity) {

 default:
 case 131:
  level = LOG_DEBUG;
  break;

 case 129:
  level = LOG_NOTICE;
  break;

 case 128:
  level = LOG_WARNING;
  break;

 case 130:
  level = LOG_ERR;
  break;
 }

 msyslog(level, "%s", msg);
}
