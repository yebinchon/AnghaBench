
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
typedef scalar_t__ time_t ;
struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;


 scalar_t__ arc4random_uniform (int) ;

void
intvl_random(struct timeval *tp,
      u_long lo,
      u_long hi)
{
 tp->tv_sec = (time_t)(hi == lo
         ? lo
         : (lo + arc4random_uniform(1 + hi - lo)));
 tp->tv_usec = arc4random_uniform(1000000);
}
