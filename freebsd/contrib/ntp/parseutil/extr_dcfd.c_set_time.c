
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;


 int LOG_NOTICE ;
 int LPRINTF (char*,int ) ;
 int gettimeofday (struct timeval*,long) ;
 scalar_t__ no_set ;
 int perror (char*) ;
 int pr_timeval (struct timeval*) ;
 int settimeofday (struct timeval*,long) ;
 int syslog (int ,char*,int ) ;
 int timeradd (struct timeval*,struct timeval*) ;

__attribute__((used)) static void
set_time(
  struct timeval *offset
  )
{
 struct timeval the_time;

 if (no_set)
     return;

 LPRINTF("set_time: %s ", pr_timeval(offset));
 syslog(LOG_NOTICE, "setting time (offset %s)", pr_timeval(offset));

 if (gettimeofday(&the_time, 0L) == -1)
 {
  perror("gettimeofday()");
 }
 else
 {
  timeradd(&the_time, offset);
  if (settimeofday(&the_time, 0L) == -1)
  {
   perror("settimeofday()");
  }
 }
}
