
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tv_sec; scalar_t__ tv_usec; } ;


 int fprintf (int ,char*,char*) ;
 int ftrace ;
 TYPE_1__ lastlog_time ;
 TYPE_1__ now ;
 char* ts (scalar_t__) ;

void
lastlog(void)
{
 if (lastlog_time.tv_sec != now.tv_sec
     || lastlog_time.tv_usec != now.tv_usec) {
  (void)fprintf(ftrace, "-- %s --\n", ts(now.tv_sec));
  lastlog_time = now;
 }
}
