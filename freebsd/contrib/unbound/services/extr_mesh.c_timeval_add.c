
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int tv_usec; scalar_t__ tv_sec; } ;



__attribute__((used)) static void
timeval_add(struct timeval* d, const struct timeval* add)
{

 d->tv_sec += add->tv_sec;
 d->tv_usec += add->tv_usec;
 if(d->tv_usec > 1000000 ) {
  d->tv_usec -= 1000000;
  d->tv_sec++;
 }

}
