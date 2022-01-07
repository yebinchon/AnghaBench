
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evutil_weakrand_state {int dummy; } ;
typedef int ev_int32_t ;


 int EVUTIL_WEAKRAND_MAX ;
 int evutil_weakrand_ (struct evutil_weakrand_state*) ;

ev_int32_t
evutil_weakrand_range_(struct evutil_weakrand_state *state, ev_int32_t top)
{
 ev_int32_t divisor, result;





 divisor = EVUTIL_WEAKRAND_MAX / top;
 do {
  result = evutil_weakrand_(state) / divisor;
 } while (result >= top);
 return result;
}
