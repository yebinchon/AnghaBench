
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;



__attribute__((used)) static void
timeval_subtract(struct timeval* d, const struct timeval* end,
 const struct timeval* start)
{

 time_t end_usec = end->tv_usec;
 d->tv_sec = end->tv_sec - start->tv_sec;
 if(end_usec < start->tv_usec) {
  end_usec += 1000000;
  d->tv_sec--;
 }
 d->tv_usec = end_usec - start->tv_usec;

}
