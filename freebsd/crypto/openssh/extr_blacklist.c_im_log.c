
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int LogLevel ;





 int SYSLOG_LEVEL_DEBUG1 ;
 int SYSLOG_LEVEL_DEBUG2 ;
 int SYSLOG_LEVEL_ERROR ;
 int SYSLOG_LEVEL_INFO ;
 int do_log (int ,char const*,int ) ;

void
im_log(int priority, const char *message, va_list args)
{
 LogLevel imlevel;

 switch (priority) {
 case 129:
  imlevel = SYSLOG_LEVEL_ERROR;
  break;
 case 130:
  imlevel = SYSLOG_LEVEL_DEBUG1;
  break;
 case 128:
  imlevel = SYSLOG_LEVEL_INFO;
  break;
 default:
  imlevel = SYSLOG_LEVEL_DEBUG2;
 }
 do_log(imlevel, message, args);
}
