
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct evutil_weakrand_state {scalar_t__ seed; } ;
typedef scalar_t__ ev_uint32_t ;


 scalar_t__ _getpid () ;
 int evutil_gettimeofday (struct timeval*,int *) ;
 scalar_t__ getpid () ;

ev_uint32_t
evutil_weakrand_seed_(struct evutil_weakrand_state *state, ev_uint32_t seed)
{
 if (seed == 0) {
  struct timeval tv;
  evutil_gettimeofday(&tv, ((void*)0));
  seed = (ev_uint32_t)tv.tv_sec + (ev_uint32_t)tv.tv_usec;



  seed += (ev_uint32_t) getpid();

 }
 state->seed = seed;
 return seed;
}
