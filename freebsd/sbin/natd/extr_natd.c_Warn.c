
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_ALERT ;
 scalar_t__ background ;
 int syslog (int ,char*,char const*) ;
 int warn (char*,char const*) ;

void Warn (const char* msg)
{
 if (background)
  syslog (LOG_ALERT, "%s (%m)", msg);
 else
  warn ("%s", msg);
}
