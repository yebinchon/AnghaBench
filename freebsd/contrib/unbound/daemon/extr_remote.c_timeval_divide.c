
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {long long tv_sec; long long tv_usec; } ;



__attribute__((used)) static void
timeval_divide(struct timeval* avg, const struct timeval* sum, long long d)
{

 size_t leftover;
 if(d == 0) {
  avg->tv_sec = 0;
  avg->tv_usec = 0;
  return;
 }
 avg->tv_sec = sum->tv_sec / d;
 avg->tv_usec = sum->tv_usec / d;

 leftover = sum->tv_sec - avg->tv_sec*d;
 avg->tv_usec += (leftover*1000000)/d;

}
