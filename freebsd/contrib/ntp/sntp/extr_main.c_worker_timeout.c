
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* evutil_socket_t ;


 int DEBUG_REQUIRE (short) ;
 short EV_TIMEOUT ;
 int UNUSED_ARG (void*) ;
 int worker_idle_timer_fired () ;

void
worker_timeout(
 evutil_socket_t fd,
 short what,
 void * ctx
 )
{
 UNUSED_ARG(fd);
 UNUSED_ARG(ctx);

 DEBUG_REQUIRE(EV_TIMEOUT & what);
 worker_idle_timer_fired();
}
