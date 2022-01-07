
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {double tv_sec; scalar_t__ tv_nsec; } ;


 int monotime_ts (struct timespec*) ;

double
monotime_double(void)
{
 struct timespec ts;

 monotime_ts(&ts);
 return ts.tv_sec + ((double)ts.tv_nsec / 1000000000);
}
