
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct timespec {int tv_sec; } ;


 int monotime_ts (struct timespec*) ;

time_t
monotime(void)
{
 struct timespec ts;

 monotime_ts(&ts);
 return ts.tv_sec;
}
