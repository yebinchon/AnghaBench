
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int snprintf (char*,int,char*,int,int,...) ;

__attribute__((used)) static char *
fmt_time(time_t seconds)
{
 int day, hr, min;
 static char buf[128];

 min = (seconds / 60) % 60;
 hr = (seconds / 60 / 60) % 24;
 day = seconds / 60 / 60 / 24;
 if (day > 0)
  snprintf(buf, sizeof buf, "%dd %d:%02d", day, hr, min);
 else
  snprintf(buf, sizeof buf, "%d:%02d", hr, min);
 return buf;
}
